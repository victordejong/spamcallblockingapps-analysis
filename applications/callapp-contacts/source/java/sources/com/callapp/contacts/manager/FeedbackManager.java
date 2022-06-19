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

    /* renamed from: a */
    private Map<String, Long> f25666a;

    /* renamed from: b */
    private Handler f25667b;

    /* renamed from: c */
    private HandlerThread f25668c;

    /* renamed from: com.callapp.contacts.manager.FeedbackManager$3 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/FeedbackManager$3.class */
    public class RunnableC73943 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ int f25677a;

        /* renamed from: b */
        final /* synthetic */ String f25678b;

        /* renamed from: c */
        final /* synthetic */ Integer f25679c;

        RunnableC73943(int i, String str, Integer num) {
            FeedbackManager.this = r4;
            this.f25677a = i;
            this.f25678b = str;
            this.f25679c = num;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.callapp.contacts.manager.FeedbackManager$3$1] */
        @Override // java.lang.Runnable
        public void run() {
            new CountDownTimer(this.f25677a * 3000, 3000L) { // from class: com.callapp.contacts.manager.FeedbackManager.3.1
                @Override // android.os.CountDownTimer
                public void onFinish() {
                }

                @Override // android.os.CountDownTimer
                public void onTick(long j) {
                    FeedbackManager.this.f25667b.post(new Runnable() { // from class: com.callapp.contacts.manager.FeedbackManager.3.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            CallAppApplication.get().m31858d(new ShowToast(RunnableC73943.this.f25678b, 1, RunnableC73943.this.f25679c));
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

        /* renamed from: a */
        private final String f25690a;

        /* renamed from: b */
        private final View f25691b;

        /* renamed from: c */
        private final int f25692c;

        /* renamed from: d */
        private Integer f25693d;

        /* renamed from: e */
        private final int f25694e;

        private ShowToast(String str, int i, Integer num) {
            this.f25694e = (int) CallAppApplication.get().getResources().getDimension(2131166085);
            this.f25690a = str;
            this.f25692c = i;
            this.f25693d = num;
            this.f25691b = null;
        }

        private ShowToast(String str, int i, Integer num, View view) {
            this.f25694e = (int) CallAppApplication.get().getResources().getDimension(2131166085);
            this.f25690a = str;
            this.f25692c = i;
            this.f25691b = view;
            this.f25693d = num;
        }

        @Override // java.lang.Runnable
        public void run() {
            Toast toast;
            if (this.f25691b != null) {
                toast = new Toast(CallAppApplication.get());
                toast.setDuration(this.f25692c);
                toast.setView(this.f25691b);
            } else {
                toast = Toast.makeText(CallAppApplication.get(), this.f25690a, this.f25692c);
                FeedbackManager.m28674a(toast, this.f25694e);
            }
            Integer num = this.f25693d;
            if (num != null) {
                toast.setGravity(num.intValue(), 0, 0);
            }
            toast.show();
        }
    }

    /* renamed from: a */
    public static void m28675a(Context context) {
        PopupManager.get().m28209a(context, Activities.isDataEnabled() ? new DialogSimpleMessage(Activities.getString(2131887064), Activities.getString(2131887063), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.manager.FeedbackManager.5
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
            }
        }, null) : new DialogSimpleMessage(Activities.getString(2131887064), Activities.getString(2131887062), Activities.getString(2131886812), Activities.getString(2131887104), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.manager.FeedbackManager.6
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                Activities.m27686a((Context) activity);
                FeedbackManager.get().m28669a("After enabling press back", (Integer) null);
            }
        }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.manager.FeedbackManager.7
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
            }
        }));
    }

    /* renamed from: a */
    static /* synthetic */ void m28674a(Toast toast, int i) {
        ViewGroup viewGroup;
        if (i <= 0 || (viewGroup = (ViewGroup) toast.getView()) == null) {
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt instanceof TextView) {
                ((TextView) childAt).setTextSize(i);
            }
        }
    }

    /* renamed from: a */
    private void m28672a(final Integer num, final View view) {
        this.f25667b.post(new Runnable() { // from class: com.callapp.contacts.manager.FeedbackManager.2
            @Override // java.lang.Runnable
            public void run() {
                CallAppApplication.get().m31858d(new ShowToast("", 3000, num, view));
                try {
                    Thread.sleep(3000L);
                } catch (InterruptedException e) {
                }
            }
        });
    }

    /* renamed from: b */
    private void m28663b(final String str, final Integer num, final Integer num2) {
        int i = num2.intValue() == 0 ? 3000 : 5000;
        if (m28665b(str, i)) {
            final int i2 = i;
            this.f25667b.post(new Runnable() { // from class: com.callapp.contacts.manager.FeedbackManager.1
                @Override // java.lang.Runnable
                public void run() {
                    CallAppApplication.get().m31858d(new ShowToast(str, num2.intValue(), num));
                    try {
                        Thread.sleep(i2);
                    } catch (InterruptedException e) {
                    }
                }
            });
        }
    }

    /* renamed from: b */
    private boolean m28665b(String str, int i) {
        Map<String, Long> map = this.f25666a;
        if (map != null) {
            Long l = map.get(str);
            if (l != null) {
                if (System.currentTimeMillis() - l.longValue() < i) {
                    return false;
                }
                this.f25666a.remove(str);
            }
            this.f25666a.put(str, Long.valueOf(System.currentTimeMillis()));
            return true;
        }
        return true;
    }

    public static FeedbackManager get() {
        return Singletons.get().getFeedbackManager();
    }

    /* renamed from: a */
    public final void m28677a() {
        Long l = Prefs.f26439eD.get();
        long currentTimeMillis = System.currentTimeMillis();
        if (!(l.longValue() == -1 || (currentTimeMillis - l.longValue()) / 86400000 >= 6)) {
            m28669a(Activities.getString(2131888132), (Integer) 17);
            return;
        }
        Random random = new Random();
        final DialogMessageWithTopImage dialogMessageWithTopImage = new DialogMessageWithTopImage(new int[]{2131230847, 2131230848, 2131230849}[random.nextInt(3)], CallAppApplication.get().getString(new int[]{2131887898, 2131887890, 2131887893}[random.nextInt(3)]), CallAppApplication.get().getString(new int[]{2131887895, 2131887896, 2131887894}[random.nextInt(3)]), CallAppApplication.get().getString(new int[]{2131887897, 2131887891, 2131887892}[random.nextInt(3)]), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.manager.FeedbackManager.8
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
            }
        }, null, 0, null);
        PopupManager.get().m28209a(CallAppApplication.get(), dialogMessageWithTopImage);
        CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.manager.FeedbackManager.9
            @Override // java.lang.Runnable
            public void run() {
                try {
                    CLog.m27606a("FeedbackManager");
                    dialogMessageWithTopImage.dismiss();
                } catch (Exception e) {
                    e.getMessage();
                    CLog.m27606a("FeedbackManager");
                }
            }
        }, (int) TimeUnit.SECONDS.toMillis(8L));
        Prefs.f26439eD.set(Long.valueOf(currentTimeMillis));
    }

    /* renamed from: a */
    public final void m28676a(int i, Context context) {
        View inflate = LayoutInflater.from(context).inflate(2131558580, (ViewGroup) null);
        ImageUtils.m27529a((ImageView) inflate.findViewById(2131363052), i, new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131100228), PorterDuff.Mode.SRC_IN));
        m28672a((Integer) 17, inflate);
    }

    /* renamed from: a */
    public final void m28671a(String str) {
        m28663b(str, null, 0);
    }

    /* renamed from: a */
    public final void m28670a(String str, int i) {
        m28667a(str, Integer.valueOf(i), (Integer) 0);
    }

    /* renamed from: a */
    public final void m28669a(String str, Integer num) {
        m28663b(str, num, 0);
    }

    /* renamed from: a */
    public final void m28668a(String str, Integer num, int i) {
        if (m28665b(str, i * 5000)) {
            CallAppApplication.get().m31858d(new RunnableC73943(i, str, num));
        }
    }

    /* renamed from: a */
    public final void m28667a(final String str, final Integer num, final Integer num2) {
        if (Prefs.f26657n.get().booleanValue()) {
            this.f25667b.post(new Runnable() { // from class: com.callapp.contacts.manager.FeedbackManager.4
                @Override // java.lang.Runnable
                public void run() {
                    CallAppApplication.get().m31858d(new ShowToast(str, num2.intValue(), num));
                    try {
                        Thread.sleep((num2.intValue() == 1 ? 5000 : 3000) == 1 ? 1L : 0L);
                    } catch (InterruptedException e) {
                    }
                }
            });
        }
    }

    /* renamed from: b */
    public final void m28666b(String str) {
        m28663b(str, null, 0);
    }

    /* renamed from: b */
    public final void m28664b(String str, Integer num) {
        m28663b(str, num, 1);
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        this.f25666a = null;
        Handler handler = this.f25667b;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        HandlerThread handlerThread = this.f25668c;
        if (handlerThread != null) {
            handlerThread.quit();
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        this.f25666a = new ConcurrentHashMap();
        HandlerThread handlerThread = new HandlerThread(FeedbackManager.class.toString());
        this.f25668c = handlerThread;
        handlerThread.start();
        AndroidUtils.m27631a(this.f25668c.getLooper());
        this.f25667b = new Handler(this.f25668c.getLooper());
    }
}
