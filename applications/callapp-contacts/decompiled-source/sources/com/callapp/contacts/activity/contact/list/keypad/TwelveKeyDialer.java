package com.callapp.contacts.activity.contact.list.keypad;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.telecom.Call;
import android.util.Pair;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.PopupMenu;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.ActionDoneListener;
import com.callapp.contacts.activity.chooseContact.ChooseSingleNumberFromContactsActivity;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.activity.interfaces.CallEventListener;
import com.callapp.contacts.activity.settings.Language;
import com.callapp.contacts.activity.settings.SpeedDialActivity;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.InCallToneManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.call.CallState;
import com.callapp.contacts.popup.OptInWithTopImagePopup;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CallLogEntry;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer.class */
public class TwelveKeyDialer implements View.OnClickListener, View.OnLongClickListener, View.OnTouchListener, PopupMenu.OnMenuItemClickListener, CallStateListener {
    private static final String[] e = {"", "ABC", "DEF", "GHI", "JKL", "MNO", "PQRS", "TUV", "WXYZ", "+"};

    /* renamed from: a  reason: collision with root package name */
    boolean f12687a;

    /* renamed from: b  reason: collision with root package name */
    Language f12688b;
    private boolean g;
    private boolean h;
    private View i;
    private ImageView k;
    private FilterListener l;
    private KeypadRequestsEvents m;
    private EditText n;
    private ImageView p;
    private ImageView q;
    private TwelveKeyDialerButton[] r;
    private View s;
    private final boolean t;
    private Activity u;
    private int v;
    private boolean w;
    private CallData x;
    private TwelveKeyDialerButton y;
    private TwelveKeyDialerButton z;
    private final Object f = new Object();
    private SparseArray<SpeedDialActivity.SpeedDialData> j = new SparseArray<>(8);
    private final AudioManager o = (AudioManager) Singletons.a("audio");

    /* renamed from: c  reason: collision with root package name */
    InCallToneManager f12689c = new InCallToneManager();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer$3  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$3.class */
    public class AnonymousClass3 implements ActionDoneListener {
        AnonymousClass3() {
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        public final void a() {
            PhoneStateManager.get().addListener(new CallStateListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.3.1
                @Override // com.callapp.contacts.manager.phone.CallStateListener
                public void onCallStateChanged(CallData callData) {
                    if (callData.getState() == CallState.RINGING_OUTGOING || callData.getState() == CallState.POST_CALL) {
                        PhoneStateManager.get().removeListener(this);
                        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.3.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                TwelveKeyDialer.this.n.setText("");
                            }
                        });
                        AnalyticsManager.get().a(Constants.CONTACT_LIST, "User called after searching with keypad", "Called from keypad call button");
                        EventBusManager.f14368a.a((EventType<L, EventType<CallEventListener, EventBusManager.CallAppDataType>>) CallEventListener.f12935b, (EventType<CallEventListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALL, false);
                    }
                }
            });
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        public final void a(boolean z) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer$4  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$4.class */
    public class AnonymousClass4 implements ActionDoneListener {
        AnonymousClass4() {
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        public final void a() {
            PhoneStateManager.get().addListener(new CallStateListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.4.1
                @Override // com.callapp.contacts.manager.phone.CallStateListener
                public void onCallStateChanged(CallData callData) {
                    if (callData.getState() == CallState.RINGING_OUTGOING || callData.getState() == CallState.POST_CALL) {
                        PhoneStateManager.get().removeListener(this);
                        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.4.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                TwelveKeyDialer.this.n.setText("");
                            }
                        });
                        AnalyticsManager.get().a(Constants.CONTACT_LIST, "User called after searching with keypad", "Called from keypad call button");
                        EventBusManager.f14368a.a((EventType<L, EventType<CallEventListener, EventBusManager.CallAppDataType>>) CallEventListener.f12935b, (EventType<CallEventListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALL, false);
                    }
                }
            });
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        public final void a(boolean z) {
        }
    }

    /* renamed from: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer$5  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$5.class */
    class AnonymousClass5 implements ActionDoneListener {
        AnonymousClass5() {
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        public final void a() {
            PhoneStateManager.get().addListener(new CallStateListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.5.1
                @Override // com.callapp.contacts.manager.phone.CallStateListener
                public void onCallStateChanged(CallData callData) {
                    if (callData.getState() == CallState.RINGING_OUTGOING || callData.getState() == CallState.POST_CALL) {
                        PhoneStateManager.get().removeListener(this);
                        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.5.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                TwelveKeyDialer.this.n.setText("");
                            }
                        });
                        AnalyticsManager.get().a(Constants.CONTACT_LIST, "User called after searching with keypad", "Called from keypad call button");
                        EventBusManager.f14368a.a((EventType<L, EventType<CallEventListener, EventBusManager.CallAppDataType>>) CallEventListener.f12935b, (EventType<CallEventListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALL, false);
                    }
                }
            });
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        public final void a(boolean z) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer$7  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$7.class */
    public class AnonymousClass7 implements ActionDoneListener {
        AnonymousClass7() {
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        public final void a() {
            PhoneStateManager.get().addListener(new CallStateListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.7.1
                @Override // com.callapp.contacts.manager.phone.CallStateListener
                public void onCallStateChanged(CallData callData) {
                    if (callData.getState() == CallState.RINGING_OUTGOING || callData.getState() == CallState.POST_CALL) {
                        PhoneStateManager.get().removeListener(this);
                        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.7.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                TwelveKeyDialer.this.n.setText("");
                            }
                        });
                        AnalyticsManager.get().a(Constants.CONTACT_LIST, "User called after searching with keypad", "Called from keypad call button");
                        EventBusManager.f14368a.a((EventType<L, EventType<CallEventListener, EventBusManager.CallAppDataType>>) CallEventListener.f12935b, (EventType<CallEventListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALL, false);
                    }
                }
            });
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        public final void a(boolean z) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer$8  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$8.class */
    public static /* synthetic */ class AnonymousClass8 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12712a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[Language.values().length];
            f12712a = iArr;
            try {
                iArr[Language.RUSSIAN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f12712a[Language.UKRAINIAN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f12712a[Language.HEBREW.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f12712a[Language.GREEK.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f12712a[Language.ARABIC.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f12712a[Language.THAI.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f12712a[Language.KOREAN.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f12712a[Language.BULGARIAN.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$FilterListener.class */
    public interface FilterListener {
        void a(String str, int i, int i2, int i3, boolean z);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$KeypadRequestsEvents.class */
    public interface KeypadRequestsEvents {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TwelveKeyDialer(Activity activity, View view, boolean z, boolean z2) {
        this.h = z;
        this.s = view;
        this.t = z2;
        b();
        this.u = activity;
        EditText editText = (EditText) view.findViewById(2131362597);
        this.n = editText;
        editText.setTextIsSelectable(true);
        this.i = view.findViewById(2131362589);
        ImageView imageView = (ImageView) view.findViewById(2131362571);
        this.k = imageView;
        imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131099885), PorterDuff.Mode.SRC_IN));
        this.k.setOnClickListener(this);
        View findViewById = view.findViewById(2131362591);
        if (z2) {
            findViewById.setVisibility(4);
        } else {
            findViewById.setVisibility(0);
        }
        setupButtons(view);
        this.n.addTextChangedListener(new DefaultInterfaceImplUtils.TextWatcherImpl() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.TextWatcherImpl, android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                boolean z3 = i2 != i3 || TwelveKeyDialer.this.g;
                if (TwelveKeyDialer.this.l != null) {
                    TwelveKeyDialer.this.l.a(TwelveKeyDialer.this.n.getText().toString(), i, i2, i3, z3);
                    TwelveKeyDialer.this.g = false;
                }
                boolean a2 = StringUtils.a(charSequence);
                if (a2) {
                    TwelveKeyDialer.this.w = false;
                }
                TwelveKeyDialer.this.setButtonsVisibility(a2);
            }
        });
        PhoneStateManager.get().addListener(this);
    }

    private static float a(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(2131951892, new int[]{16842901});
        float dimension = obtainStyledAttributes.getDimension(0, 12.0f);
        obtainStyledAttributes.recycle();
        return Activities.b(dimension);
    }

    private static String a(String str) {
        return str.substring(0, str.length() - 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, Activity activity) {
        PhoneManager.a(activity, PhoneManager.get().a(str), 0L, null, Constants.CONTACT_LIST, "Dialer dial", true, new AnonymousClass4());
    }

    private boolean a(int i) {
        if (this.n.getText().length() > 1) {
            return false;
        }
        b(i);
        return true;
    }

    private static boolean a(Context context, String str) {
        if (!StringUtils.b(str, "*#06#")) {
            return false;
        }
        PopupManager.get().a(context, new DeviceInformationDialog());
        return true;
    }

    private void b(final int i) {
        AnalyticsManager.get().a(Constants.KEYPAD, "Speed dial", Constants.CLICK);
        new Task() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.6
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                final String phoneNumber;
                final int i2 = (TwelveKeyDialer.this.v * 10) + i;
                synchronized (TwelveKeyDialer.this.f) {
                    phoneNumber = ((SpeedDialActivity.SpeedDialData) TwelveKeyDialer.this.j.get(i2)).getPhoneNumber();
                }
                if (StringUtils.a((CharSequence) phoneNumber)) {
                    PopupManager.get().a(TwelveKeyDialer.this.u, new DialogSimpleMessage(Activities.getString(2131886215), Activities.getString(2131886214), Activities.getString(2131887338), Activities.getString(2131886505), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.6.1
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public void onClickListener(Activity activity) {
                            Activities.a(activity, ChooseSingleNumberFromContactsActivity.class, new ActivityResult() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.6.1.1
                                @Override // com.callapp.contacts.manager.popup.ActivityResult
                                public void onActivityResult(Activity activity2, int i3, int i4, Intent intent) {
                                    if (i4 == -1 && intent != null) {
                                        Bundle extras = intent.getExtras();
                                        Pair pair = new Pair(extras.getString(Constants.EXTRA_PHONE_NUMBER), extras.getString(ContactDetailsActivity.EXTRA_FULL_NAME));
                                        if (!StringUtils.b((CharSequence) pair.first) || !StringUtils.b((CharSequence) pair.second) || i2 == 0) {
                                            FeedbackManager.get().a(Activities.getString(2131887745), (Integer) null);
                                            return;
                                        }
                                        SpeedDialActivity.SpeedDialData speedDialData = new SpeedDialActivity.SpeedDialData(i2, (String) pair.second, (String) pair.first);
                                        List<SpeedDialActivity.SpeedDialData> a2 = SpeedDialActivity.a(Prefs.aE.get());
                                        a2.set(a2.indexOf(speedDialData), speedDialData);
                                        SpeedDialActivity.a(a2);
                                    }
                                }
                            });
                        }
                    }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.6.2
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public void onClickListener(Activity activity) {
                        }
                    }));
                } else {
                    TwelveKeyDialer.this.u.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.6.3
                        @Override // java.lang.Runnable
                        public void run() {
                            TwelveKeyDialer.this.a(true);
                            Phone a2 = PhoneManager.get().a(phoneNumber);
                            PhoneManager.a(CallAppApplication.get(), a2, 0L, null, Constants.CONTACT_LIST, "Speed Dial", ContactUtils.a(a2, ContactUtils.a(a2).getDeviceId()), null);
                        }
                    });
                }
            }
        }.execute();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str, Activity activity) {
        PhoneManager.a(activity, PhoneManager.get().a(str), 0L, null, Constants.CONTACT_LIST, "Dialer long-press dial", true, new AnonymousClass3());
    }

    private static boolean b(Context context, String str) {
        if (!StringUtils.b(str, "*#07#")) {
            return false;
        }
        Intent intent = new Intent("android.settings.SHOW_REGULATORY_INFO");
        if (!Activities.a(intent)) {
            return false;
        }
        Activities.b(context, intent);
        return true;
    }

    private void c(int i) {
        KeyEvent keyEvent = new KeyEvent(0, i);
        AndroidUtils.a(this.i, 1);
        this.n.onKeyDown(i, keyEvent);
        int length = this.n.length();
        if (length == this.n.getSelectionStart() && length == this.n.getSelectionEnd()) {
            this.n.setCursorVisible(false);
        }
        String obj = this.n.getText().toString();
        if (a(this.u, obj) || b(this.u, obj)) {
            this.n.setText("");
        }
    }

    private void d(int i) {
        if (this.f12689c == null) {
            CLog.a(TwelveKeyDialer.class, "toneManager is null while trying to play tone!");
        } else if (Build.VERSION.SDK_INT >= 23 && this.t) {
            Call telecomCallFromCallData = PhoneStateManager.get().getTelecomCallFromCallData(this.x);
            Call call = telecomCallFromCallData;
            if (telecomCallFromCallData == null) {
                call = PhoneStateManager.get().getTelecomCallFromCallData(PhoneManager.get().getActiveCall());
            }
            if (call != null) {
                this.f12689c.a(call, e(i));
            } else {
                FeedbackManager.get().a("Play DTMF FAILED !!!", 80);
            }
        } else if (!this.f12687a && !e()) {
            this.f12689c.a(i);
        }
    }

    private static char e(int i) {
        switch (i) {
            case 0:
                return '0';
            case 1:
                return '1';
            case 2:
                return '2';
            case 3:
                return '3';
            case 4:
                return '4';
            case 5:
                return '5';
            case 6:
                return '6';
            case 7:
                return '7';
            case 8:
                return '8';
            case 9:
                return '9';
            case 10:
                return '*';
            case 11:
                return '#';
            default:
                throw new RuntimeException("Unknown tone given");
        }
    }

    private boolean e() {
        int ringerMode = this.o.getRingerMode();
        return ringerMode == 0 || ringerMode == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setButtonsVisibility(boolean z) {
        if (z) {
            this.p.setVisibility(0);
            if (this.h) {
                this.k.setVisibility(0);
            } else {
                this.k.setVisibility(4);
            }
            this.q.setVisibility(8);
            return;
        }
        this.p.setVisibility(0);
        this.k.setVisibility(8);
        this.q.setVisibility(0);
    }

    private void setupButtons(View view) {
        TwelveKeyDialerButton twelveKeyDialerButton = (TwelveKeyDialerButton) view.findViewById(2131363409);
        TwelveKeyDialerButton twelveKeyDialerButton2 = (TwelveKeyDialerButton) view.findViewById(2131364451);
        twelveKeyDialerButton2.a("2");
        TwelveKeyDialerButton twelveKeyDialerButton3 = (TwelveKeyDialerButton) view.findViewById(2131364117);
        twelveKeyDialerButton3.a("3");
        TwelveKeyDialerButton twelveKeyDialerButton4 = (TwelveKeyDialerButton) view.findViewById(2131362864);
        twelveKeyDialerButton4.a("4");
        TwelveKeyDialerButton twelveKeyDialerButton5 = (TwelveKeyDialerButton) view.findViewById(2131362833);
        twelveKeyDialerButton5.a("5");
        TwelveKeyDialerButton twelveKeyDialerButton6 = (TwelveKeyDialerButton) view.findViewById(2131363876);
        twelveKeyDialerButton6.a("6");
        TwelveKeyDialerButton twelveKeyDialerButton7 = (TwelveKeyDialerButton) view.findViewById(2131363824);
        twelveKeyDialerButton7.a("7");
        TwelveKeyDialerButton twelveKeyDialerButton8 = (TwelveKeyDialerButton) view.findViewById(2131362682);
        twelveKeyDialerButton8.a("8");
        TwelveKeyDialerButton twelveKeyDialerButton9 = (TwelveKeyDialerButton) view.findViewById(2131363369);
        twelveKeyDialerButton9.a("9");
        TwelveKeyDialerButton twelveKeyDialerButton10 = (TwelveKeyDialerButton) view.findViewById(2131364581);
        twelveKeyDialerButton10.a("0");
        this.y = (TwelveKeyDialerButton) view.findViewById(2131363954);
        this.z = (TwelveKeyDialerButton) view.findViewById(2131363547);
        if (this.t) {
            view.setOnTouchListener(this);
        }
        TwelveKeyDialerButton[] twelveKeyDialerButtonArr = {twelveKeyDialerButton, twelveKeyDialerButton2, twelveKeyDialerButton3, twelveKeyDialerButton4, twelveKeyDialerButton5, twelveKeyDialerButton6, twelveKeyDialerButton7, twelveKeyDialerButton8, twelveKeyDialerButton9, twelveKeyDialerButton10};
        this.r = twelveKeyDialerButtonArr;
        for (TwelveKeyDialerButton twelveKeyDialerButton11 : twelveKeyDialerButtonArr) {
            if (this.t) {
                twelveKeyDialerButton11.setOnTouchListener(this);
            } else {
                twelveKeyDialerButton11.setOnClickListener(this);
            }
            if (this.t) {
                this.y.setOnTouchListener(this);
                this.z.setOnTouchListener(this);
            } else {
                this.y.setOnClickListener(this);
                this.z.setOnClickListener(this);
            }
        }
        ImageView imageView = (ImageView) this.s.findViewById(2131362547);
        this.p = imageView;
        imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131099885), PorterDuff.Mode.SRC_IN));
        this.p.setOnClickListener(this);
        Drawable drawable = ViewUtils.getDrawable(2131231542);
        if (drawable != null) {
            drawable.setColorFilter(ThemeUtils.a(this.u, 2131099881), PorterDuff.Mode.SRC_IN);
        }
        FloatingActionButton floatingActionButton = (FloatingActionButton) this.s.findViewById(2131362568);
        floatingActionButton.setImageDrawable(drawable);
        floatingActionButton.setOnClickListener(this);
        floatingActionButton.setOnLongClickListener(this);
        floatingActionButton.setBackgroundTintList(ColorStateList.valueOf(ThemeUtils.a(view.getContext(), 2131099914)));
        ImageView imageView2 = (ImageView) this.s.findViewById(2131362590);
        this.q = imageView2;
        imageView2.setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131099885), PorterDuff.Mode.SRC_IN));
        this.q.setOnClickListener(this);
        this.n.setOnClickListener(this);
        this.n.setOnLongClickListener(this);
        this.s.findViewById(2131362547).setOnLongClickListener(this);
        twelveKeyDialerButton10.setOnLongClickListener(this);
        twelveKeyDialerButton.setOnLongClickListener(this);
        twelveKeyDialerButton2.setOnLongClickListener(this);
        twelveKeyDialerButton3.setOnLongClickListener(this);
        twelveKeyDialerButton4.setOnLongClickListener(this);
        twelveKeyDialerButton5.setOnLongClickListener(this);
        twelveKeyDialerButton6.setOnLongClickListener(this);
        twelveKeyDialerButton7.setOnLongClickListener(this);
        twelveKeyDialerButton8.setOnLongClickListener(this);
        twelveKeyDialerButton9.setOnLongClickListener(this);
        d();
    }

    public final void a() {
        this.n.setTextColor(ThemeUtils.getColor(2131100228));
        this.p.setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131100228), PorterDuff.Mode.SRC_IN));
        this.k.setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131100228), PorterDuff.Mode.SRC_IN));
        this.q.setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131100228), PorterDuff.Mode.SRC_IN));
        if (CollectionUtils.b(this.r)) {
            for (TwelveKeyDialerButton twelveKeyDialerButton : this.r) {
                twelveKeyDialerButton.a();
            }
        }
        TwelveKeyDialerButton twelveKeyDialerButton2 = this.y;
        if (twelveKeyDialerButton2 != null) {
            twelveKeyDialerButton2.a();
        }
        TwelveKeyDialerButton twelveKeyDialerButton3 = this.z;
        if (twelveKeyDialerButton3 != null) {
            twelveKeyDialerButton3.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z) {
        this.g = z;
        this.n.setText("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        new Task() { // from class: com.callapp.contacts.activity.contact.list.keypad.TwelveKeyDialer.2
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                synchronized (TwelveKeyDialer.this.f) {
                    TwelveKeyDialer.this.j.clear();
                    for (SpeedDialActivity.SpeedDialData speedDialData : SpeedDialActivity.a(Prefs.aE.get())) {
                        TwelveKeyDialer.this.j.put(speedDialData.getDigit(), speedDialData);
                    }
                }
            }
        }.execute();
    }

    public final void c() {
        if (this.f12689c == null) {
            CLog.a(TwelveKeyDialer.class, "toneManager is null while trying to stop tone!");
        } else if (Build.VERSION.SDK_INT >= 23 && this.t) {
            Call telecomCallFromCallData = PhoneStateManager.get().getTelecomCallFromCallData(this.x);
            Call call = telecomCallFromCallData;
            if (telecomCallFromCallData == null) {
                call = PhoneStateManager.get().getTelecomCallFromCallData(PhoneManager.get().getActiveCall());
            }
            if (call != null) {
                this.f12689c.a(call);
            } else {
                FeedbackManager.get().a("Stop DTMF FAILED !!!", 80);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        analyticsManager.a(Constants.KEYPAD, "T9 language changed: " + this.f12688b, Constants.KEYPAD_LABEL);
        this.f12688b = (Language) Prefs.bA.get();
        String[] strArr = new String[12];
        int i = 0;
        switch (AnonymousClass8.f12712a[this.f12688b.ordinal()]) {
            case 1:
                strArr[1] = a(Activities.getString(2131887777));
                strArr[2] = a(Activities.getString(2131887785));
                strArr[3] = a(Activities.getString(2131887794));
                strArr[4] = a(Activities.getString(2131887803));
                strArr[5] = a(Activities.getString(2131887812));
                strArr[6] = a(Activities.getString(2131887821));
                strArr[7] = a(Activities.getString(2131887830));
                strArr[8] = a(Activities.getString(2131887839));
                break;
            case 2:
                strArr[1] = a(Activities.getString(2131887779));
                strArr[2] = a(Activities.getString(2131887787));
                strArr[3] = a(Activities.getString(2131887796));
                strArr[4] = a(Activities.getString(2131887805));
                strArr[5] = a(Activities.getString(2131887814));
                strArr[6] = a(Activities.getString(2131887823));
                strArr[7] = a(Activities.getString(2131887832));
                strArr[8] = a(Activities.getString(2131887841));
                break;
            case 3:
                strArr[1] = Activities.getString(2131886959);
                strArr[2] = Activities.getString(2131886960);
                strArr[3] = Activities.getString(2131886961);
                strArr[4] = Activities.getString(2131886962);
                strArr[5] = Activities.getString(2131886963);
                strArr[6] = Activities.getString(2131886964);
                strArr[7] = Activities.getString(2131886965);
                strArr[8] = Activities.getString(2131886966);
                break;
            case 4:
                strArr[1] = Activities.getString(2131886950);
                strArr[2] = Activities.getString(2131886951);
                strArr[3] = Activities.getString(2131886952);
                strArr[4] = Activities.getString(2131886953);
                strArr[5] = Activities.getString(2131886954);
                strArr[6] = Activities.getString(2131886955);
                strArr[7] = Activities.getString(2131886956);
                strArr[8] = Activities.getString(2131886957);
                break;
            case 5:
                strArr[1] = a(Activities.getString(2131887773));
                strArr[2] = a(Activities.getString(2131887781));
                strArr[3] = a(Activities.getString(2131887789));
                strArr[4] = a(Activities.getString(2131887798));
                strArr[5] = a(Activities.getString(2131887807));
                strArr[6] = a(Activities.getString(2131887816));
                strArr[7] = a(Activities.getString(2131887825));
                strArr[8] = a(Activities.getString(2131887834));
                break;
            case 6:
                strArr[0] = a(Activities.getString(2131887771));
                strArr[1] = a(Activities.getString(2131887778));
                strArr[2] = a(Activities.getString(2131887786));
                strArr[3] = a(Activities.getString(2131887795));
                strArr[4] = a(Activities.getString(2131887804));
                strArr[5] = a(Activities.getString(2131887813));
                strArr[6] = a(Activities.getString(2131887822));
                strArr[7] = a(Activities.getString(2131887831));
                strArr[8] = a(Activities.getString(2131887840));
                strArr[9] = a(Activities.getString(2131887770));
                break;
            case 7:
                strArr[3] = Activities.getString(2131887095);
                strArr[4] = Activities.getString(2131887096);
                strArr[5] = Activities.getString(2131887097);
                strArr[6] = Activities.getString(2131887098);
                strArr[7] = Activities.getString(2131887099);
                strArr[8] = Activities.getString(2131887100);
                strArr[9] = Activities.getString(2131887094);
                break;
            case 8:
                strArr[1] = a(Activities.getString(2131887774));
                strArr[2] = a(Activities.getString(2131887782));
                strArr[3] = a(Activities.getString(2131887790));
                strArr[4] = a(Activities.getString(2131887799));
                strArr[5] = a(Activities.getString(2131887808));
                strArr[6] = a(Activities.getString(2131887817));
                strArr[7] = a(Activities.getString(2131887826));
                strArr[8] = a(Activities.getString(2131887835));
                break;
        }
        float a2 = a(this.u);
        while (true) {
            TwelveKeyDialerButton[] twelveKeyDialerButtonArr = this.r;
            if (i < twelveKeyDialerButtonArr.length) {
                twelveKeyDialerButtonArr[i].b(e[i]);
                this.r[i].c(strArr[i]);
                this.r[i].setSecondaryTextSize(a2);
                i++;
            } else {
                return;
            }
        }
    }

    public CharSequence getNumber() {
        return this.n.getText();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isUserAddedToDialerText() {
        return this.w;
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        this.x = callData;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AndroidUtils.a(view, 1);
        switch (view.getId()) {
            case 2131362547:
                c(67);
                return;
            case 2131362568:
                AndroidUtils.a(this.i, 1);
                String obj = this.n.getText().toString();
                if (StringUtils.a((CharSequence) obj)) {
                    AnalyticsManager.get().a(Constants.KEYPAD, "Show last call log number", Constants.CLICK);
                    CallLogEntry a2 = CallLogUtils.a(true);
                    if (a2 != null) {
                        setNumber(a2.getNumber());
                        return;
                    }
                    return;
                }
                AnalyticsManager.get().a(Constants.KEYPAD, "Call to number", Constants.CLICK);
                AndroidUtils.a(this.i, 1);
                PhoneManager.a(this.u, PhoneManager.get().a(obj), 0L, null, Constants.CONTACT_LIST, "Dialer dial", false, new AnonymousClass7());
                return;
            case 2131362571:
                AnalyticsManager.get().a(Constants.KEYPAD, "Voice search from keypad", Constants.CLICK);
                KeypadRequestsEvents keypadRequestsEvents = this.m;
                if (keypadRequestsEvents != null) {
                    keypadRequestsEvents.a();
                    return;
                }
                return;
            case 2131362590:
                ImageView imageView = this.q;
                AnalyticsManager.get().a(Constants.KEYPAD, "Showing keypad menu options", Constants.CLICK);
                PopupMenu popupMenu = new PopupMenu(this.u, imageView);
                popupMenu.setOnMenuItemClickListener(this);
                popupMenu.inflate(2131623939);
                Menu menu = popupMenu.getMenu();
                menu.findItem(2131362592).setTitle(Activities.getString(2131887183));
                menu.findItem(2131362593).setTitle(Activities.getString(2131887184));
                popupMenu.show();
                return;
            case 2131362597:
                if (this.n.length() != 0) {
                    this.n.setCursorVisible(true);
                    return;
                }
                return;
            case 2131362682:
                d(8);
                c(15);
                this.w = true;
                return;
            case 2131362833:
                d(5);
                c(12);
                this.w = true;
                return;
            case 2131362864:
                d(4);
                c(11);
                this.w = true;
                return;
            case 2131363369:
                d(9);
                c(16);
                this.w = true;
                return;
            case 2131363409:
                d(1);
                c(8);
                this.w = true;
                return;
            case 2131363547:
                d(11);
                c(18);
                return;
            case 2131363824:
                d(7);
                c(14);
                this.w = true;
                return;
            case 2131363876:
                d(6);
                c(13);
                this.w = true;
                return;
            case 2131363954:
                d(10);
                c(17);
                return;
            case 2131364117:
                d(3);
                c(10);
                this.w = true;
                return;
            case 2131364451:
                d(2);
                c(9);
                this.w = true;
                return;
            case 2131364581:
                d(0);
                c(7);
                this.w = true;
                return;
            default:
                return;
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        AndroidUtils.a(view, 0);
        int id = view.getId();
        if (this.t && id != 2131362547) {
            return false;
        }
        int intValue = (!StringUtils.b((CharSequence) this.n.getText().toString()) || this.n.getText().length() >= 2 || !StringUtils.a(this.n.getText().toString(), false)) ? 0 : Integer.valueOf(this.n.getText().toString()).intValue();
        this.v = intValue;
        switch (id) {
            case 2131362547:
                AnalyticsManager.get().a(Constants.KEYPAD, "Clear number", Constants.CLICK);
                a(true);
                int length = this.n.length();
                if (length != this.n.getSelectionStart() || length != this.n.getSelectionEnd()) {
                    return true;
                }
                this.n.setCursorVisible(false);
                return true;
            case 2131362568:
                final String obj = this.n.getText().toString();
                AnalyticsManager.get().a(Constants.KEYPAD, "Call to number", Constants.CLICK);
                AndroidUtils.a(this.i, 1);
                if (OptInWithTopImagePopup.b()) {
                    OptInWithTopImagePopup.b(this.u, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.keypad._$$Lambda$TwelveKeyDialer$kn8WtWiXFBDuh19bwo_BtFqkprA
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public final void onClickListener(Activity activity) {
                            TwelveKeyDialer.this.b(obj, activity);
                        }
                    }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list.keypad._$$Lambda$TwelveKeyDialer$csWYHuEIvdnzIE2vT8aA_LJoo4M
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public final void onClickListener(Activity activity) {
                            TwelveKeyDialer.this.a(obj, activity);
                        }
                    });
                    return true;
                }
                PhoneManager.a(this.u, PhoneManager.get().a(obj), 0L, null, Constants.CONTACT_LIST, "Dialer long-press dial", true, new AnonymousClass5());
                return true;
            case 2131362597:
                this.n.setCursorVisible(true);
                return false;
            case 2131362682:
                a(8);
                return true;
            case 2131362833:
                a(5);
                return true;
            case 2131362864:
                a(4);
                return true;
            case 2131363369:
                a(9);
                return true;
            case 2131363409:
                if (intValue == 0) {
                    PhoneManager.c(CallAppApplication.get());
                    return true;
                }
                a(1);
                return true;
            case 2131363824:
                a(7);
                return true;
            case 2131363876:
                a(6);
                return true;
            case 2131364117:
                a(3);
                return true;
            case 2131364451:
                a(2);
                return true;
            case 2131364581:
                if (intValue == 0) {
                    c(81);
                    return true;
                }
                a(0);
                return true;
            default:
                return true;
        }
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 2131362592:
                c(55);
                return true;
            case 2131362593:
                c(74);
                return true;
            default:
                return false;
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            onClick(view);
            return false;
        } else if (action != 1) {
            return false;
        } else {
            c();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setFilterListener(FilterListener filterListener) {
        this.l = filterListener;
    }

    public void setKeypadRequestsEventsListener(KeypadRequestsEvents keypadRequestsEvents) {
        this.m = keypadRequestsEvents;
    }

    public void setNumber(String str) {
        String obj = this.n.getText().toString();
        if (str != null && str.length() == obj.length()) {
            this.n.setText(str);
            this.n.setSelection(obj.length());
        } else if (!StringUtils.a((CharSequence) str)) {
            this.n.getText().clear();
            this.n.append(str);
        }
    }
}
