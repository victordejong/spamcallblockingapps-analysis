package com.callapp.contacts.manager;

import android.app.Activity;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImage;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/FeedbackManager.class */
public class FeedbackManager implements ManagedLifecycle {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Long> f14840a;

    /* renamed from: b  reason: collision with root package name */
    private Handler f14841b;

    /* renamed from: c  reason: collision with root package name */
    private HandlerThread f14842c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.manager.FeedbackManager$3  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/FeedbackManager$3.class */
    public class AnonymousClass3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f14850a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f14851b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Integer f14852c;

        AnonymousClass3(int i, String str, Integer num) {
            this.f14850a = i;
            this.f14851b = str;
            this.f14852c = num;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.callapp.contacts.manager.FeedbackManager$3$1] */
        @Override // java.lang.Runnable
        public void run() {
            new CountDownTimer(this.f14850a * 3000, 3000L) { // from class: com.callapp.contacts.manager.FeedbackManager.3.1
                @Override // android.os.CountDownTimer
                public void onFinish() {
                }

                @Override // android.os.CountDownTimer
                public void onTick(long j) {
                    FeedbackManager.this.f14841b.post(new Runnable() { // from class: com.callapp.contacts.manager.FeedbackManager.3.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            CallAppApplication.get().d(new ShowToast(AnonymousClass3.this.f14851b, 1, AnonymousClass3.this.f14852c));
                            try {
                                Thread.sleep(5000L);
                            } catch (InterruptedException e) {
                            }
                        }
                    });
                }
            }.start();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/FeedbackManager$ShowToast.class */
    static class ShowToast implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final String f14863a;

        /* renamed from: b  reason: collision with root package name */
        private final View f14864b;

        /* renamed from: c  reason: collision with root package name */
        private final int f14865c;

        /* renamed from: d  reason: collision with root package name */
        private Integer f14866d;
        private final int e;

        private ShowToast(String str, int i, Integer num) {
            this.e = (int) CallAppApplication.get().getResources().getDimension(2131166085);
            this.f14863a = str;
            this.f14865c = i;
            this.f14866d = num;
            this.f14864b = null;
        }

        private ShowToast(String str, int i, Integer num, View view) {
            this.e = (int) CallAppApplication.get().getResources().getDimension(2131166085);
            this.f14863a = str;
            this.f14865c = i;
            this.f14864b = view;
            this.f14866d = num;
        }

        @Override // java.lang.Runnable
        public void run() {
            Toast toast;
            if (this.f14864b != null) {
                toast = new Toast(CallAppApplication.get());
                toast.setDuration(this.f14865c);
                toast.setView(this.f14864b);
            } else {
                toast = Toast.makeText(CallAppApplication.get(), this.f14863a, this.f14865c);
                FeedbackManager.a(toast, this.e);
            }
            Integer num = this.f14866d;
            if (num != null) {
                toast.setGravity(num.intValue(), 0, 0);
            }
            toast.show();
        }
    }

    public static void a(Context context) {
        PopupManager.get().a(context, Activities.isDataEnabled() ? new DialogSimpleMessage(Activities.getString(2131887064), Activities.getString(2131887063), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.manager.FeedbackManager.5
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
            }
        }, null) : new DialogSimpleMessage(Activities.getString(2131887064), Activities.getString(2131887062), Activities.getString(2131886812), Activities.getString(2131887104), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.manager.FeedbackManager.6
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                Activities.a((Context) activity);
                FeedbackManager.get().a("After enabling press back", (Integer) null);
            }
        }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.manager.FeedbackManager.7
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
            }
        }));
    }

    static /* synthetic */ void a(Toast toast, int i) {
        ViewGroup viewGroup;
        if (i > 0 && (viewGroup = (ViewGroup) toast.getView()) != null) {
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (childAt instanceof TextView) {
                    ((TextView) childAt).setTextSize(i);
                }
            }
        }
    }

    private void a(final Integer num, final View view) {
        this.f14841b.post(new Runnable() { // from class: com.callapp.contacts.manager.FeedbackManager.2
            @Override // java.lang.Runnable
            public void run() {
                CallAppApplication.get().d(new ShowToast("", 3000, num, view));
                try {
                    Thread.sleep(3000L);
                } catch (InterruptedException e) {
                }
            }
        });
    }

    private void b(final String str, final Integer num, final Integer num2) {
        final int i = num2.intValue() == 0 ? 3000 : 5000;
        if (b(str, i)) {
            this.f14841b.post(new Runnable() { // from class: com.callapp.contacts.manager.FeedbackManager.1
                @Override // java.lang.Runnable
                public void run() {
                    CallAppApplication.get().d(new ShowToast(str, num2.intValue(), num));
                    try {
                        Thread.sleep(i);
                    } catch (InterruptedException e) {
                    }
                }
            });
        }
    }

    private boolean b(String str, int i) {
        Map<String, Long> map = this.f14840a;
        if (map == null) {
            return true;
        }
        Long l = map.get(str);
        if (l != null) {
            if (System.currentTimeMillis() - l.longValue() < i) {
                return false;
            }
            this.f14840a.remove(str);
        }
        this.f14840a.put(str, Long.valueOf(System.currentTimeMillis()));
        return true;
    }

    public static FeedbackManager get() {
        return Singletons.get().getFeedbackManager();
    }

    public final void a() {
        Long l = Prefs.eD.get();
        long currentTimeMillis = System.currentTimeMillis();
        if (l.longValue() == -1 || (currentTimeMillis - l.longValue()) / 86400000 >= 6) {
            Random random = new Random();
            final DialogMessageWithTopImage dialogMessageWithTopImage = new DialogMessageWithTopImage(new int[]{2131230847, 2131230848, 2131230849}[random.nextInt(3)], CallAppApplication.get().getString(new int[]{2131887898, 2131887890, 2131887893}[random.nextInt(3)]), CallAppApplication.get().getString(new int[]{2131887895, 2131887896, 2131887894}[random.nextInt(3)]), CallAppApplication.get().getString(new int[]{2131887897, 2131887891, 2131887892}[random.nextInt(3)]), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.manager.FeedbackManager.8
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity) {
                }
            }, null, 0, null);
            PopupManager.get().a(CallAppApplication.get(), dialogMessageWithTopImage);
            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.manager.FeedbackManager.9
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        CLog.a("FeedbackManager");
                        dialogMessageWithTopImage.dismiss();
                    } catch (Exception e) {
                        e.getMessage();
                        CLog.a("FeedbackManager");
                    }
                }
            }, (int) TimeUnit.SECONDS.toMillis(8L));
            Prefs.eD.set(Long.valueOf(currentTimeMillis));
            return;
        }
        a(Activities.getString(2131888132), (Integer) 17);
    }

    public final void a(int i, Context context) {
        View inflate = LayoutInflater.from(context).inflate(2131558580, (ViewGroup) null);
        ImageUtils.a((ImageView) inflate.findViewById(2131363052), i, new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131100228), PorterDuff.Mode.SRC_IN));
        a((Integer) 17, inflate);
    }

    public final void a(String str) {
        b(str, null, 0);
    }

    public final void a(String str, int i) {
        a(str, Integer.valueOf(i), (Integer) 0);
    }

    public final void a(String str, Integer num) {
        b(str, num, 0);
    }

    public final void a(String str, Integer num, int i) {
        if (b(str, i * 5000)) {
            CallAppApplication.get().d(new AnonymousClass3(i, str, num));
        }
    }

    public final void a(final String str, final Integer num, final Integer num2) {
        if (Prefs.n.get().booleanValue()) {
            this.f14841b.post(new Runnable() { // from class: com.callapp.contacts.manager.FeedbackManager.4
                @Override // java.lang.Runnable
                public void run() {
                    CallAppApplication.get().d(new ShowToast(str, num2.intValue(), num));
                    try {
                        Thread.sleep(num2.intValue() == 1 ? 5000L : 3000L);
                    } catch (InterruptedException e) {
                    }
                }
            });
        }
    }

    public final void b(String str) {
        b(str, null, 0);
    }

    public final void b(String str, Integer num) {
        b(str, num, 1);
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        this.f14840a = null;
        Handler handler = this.f14841b;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        HandlerThread handlerThread = this.f14842c;
        if (handlerThread != null) {
            handlerThread.quit();
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        this.f14840a = new ConcurrentHashMap();
        HandlerThread handlerThread = new HandlerThread(FeedbackManager.class.toString());
        this.f14842c = handlerThread;
        handlerThread.start();
        AndroidUtils.a(this.f14842c.getLooper());
        this.f14841b = new Handler(this.f14842c.getLooper());
    }
}
