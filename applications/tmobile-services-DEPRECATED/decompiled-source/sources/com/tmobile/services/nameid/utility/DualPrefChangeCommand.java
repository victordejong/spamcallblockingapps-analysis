package com.tmobile.services.nameid.utility;

import android.content.Context;
import androidx.annotation.StringRes;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.api.ApiWrapper;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.MessageUserPreference;
import com.tmobile.services.nameid.model.UserPreference;
import com.tmobile.services.nameid.model.UserPreferenceStatus;
import com.tmobile.services.nameid.model.UserPreferenceUpdater;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import retrofit2.Response;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/DualPrefChangeCommand.class */
public class DualPrefChangeCommand implements Command {

    /* renamed from: a */
    private final UserPreference f14278a;

    /* renamed from: b */
    private final UserPreference f14279b;

    /* renamed from: c */
    private ApiUtils.Mode f14280c;

    /* renamed from: d */
    private final UserPreference f14281d;

    /* renamed from: e */
    private final UserPreference f14282e;

    /* renamed from: f */
    private ApiUtils.Mode f14283f;

    /* renamed from: g */
    private GenericUserPrefListener f14284g;

    /* renamed from: h */
    private final Context f14285h;

    /* renamed from: i */
    private ApiStatus f14286i;

    /* renamed from: j */
    private ApiStatus f14287j;

    /* renamed from: k */
    private int f14288k = 0;

    /* renamed from: l */
    private String f14289l = "";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tmobile.services.nameid.utility.DualPrefChangeCommand$1 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/DualPrefChangeCommand$1.class */
    public static /* synthetic */ class C18961 {

        /* renamed from: a */
        static final /* synthetic */ int[] f14290a;

        /* renamed from: b */
        static final /* synthetic */ int[] f14291b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0055 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:22:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:28:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:24:0x0049). Please submit an issue!!! */
        static {
            int[] iArr = new int[CallerSetting.Action.values().length];
            f14291b = iArr;
            try {
                iArr[CallerSetting.Action.APPROVED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14291b[CallerSetting.Action.BLOCKED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f14291b[CallerSetting.Action.VOICEMAIL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[ApiUtils.Mode.values().length];
            f14290a = iArr2;
            try {
                iArr2[ApiUtils.Mode.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f14290a[ApiUtils.Mode.UPDATE.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f14290a[ApiUtils.Mode.DELETE.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/DualPrefChangeCommand$AddUserPrefObserver.class */
    public class AddUserPrefObserver implements Observer<UserPreferenceStatus> {

        /* renamed from: f */
        private int f14292f;

        /* renamed from: g */
        private String f14293g;

        /* renamed from: h */
        private Command f14294h;

        AddUserPrefObserver(UserPreference userPreference, String str, Command command) {
            this.f14292f = userPreference.getCommEventType();
            this.f14293g = str;
            this.f14294h = command;
        }

        /* renamed from: b */
        private void m5735b(ApiStatus apiStatus) {
            if (this.f14292f == MessageUserPreference.CommEventType.TEXT.getValue()) {
                DualPrefChangeCommand.this.f14287j = apiStatus;
            } else {
                DualPrefChangeCommand.this.f14286i = apiStatus;
            }
        }

        /* renamed from: a */
        public void onNext(UserPreferenceStatus userPreferenceStatus) {
            LogUtil.m5643d("DualPrefChangeCommand#AddUserPrefObserver#onNext", "called");
            if (this.f14292f == MessageUserPreference.CommEventType.TEXT.getValue()) {
                ApiUtils.m6827w0(userPreferenceStatus);
            } else {
                ApiUtils.m6823y0(userPreferenceStatus);
            }
            if (userPreferenceStatus.getSuccessfulItems().isEmpty()) {
                m5735b(ApiStatus.FAILED);
            } else {
                m5735b(ApiStatus.SUCCEEDED);
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            LogUtil.m5643d("DualPrefChangeCommand#AddUserPrefObserver#onComplete", "called");
            DualPrefChangeCommand.this.m5746f();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            LogUtil.m5643d("DualPrefChangeCommand#AddUserPrefObserver#onError", th.getMessage());
            DualPrefChangeCommand.this.m5737o(this.f14293g);
            this.f14294h.execute();
            m5735b(ApiStatus.FAILED);
            DualPrefChangeCommand.this.m5746f();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            LogUtil.m5643d("DualPrefChangeCommand#AddUserPrefObserver#onSubscribe", "called");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/DualPrefChangeCommand$ApiStatus.class */
    public enum ApiStatus {
        PENDING,
        SUCCEEDED,
        FAILED
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/DualPrefChangeCommand$GenericUserPrefListener.class */
    public interface GenericUserPrefListener {
        void onFail(Command command, String str);

        void onSuccess();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/DualPrefChangeCommand$GenericUserPrefObserver.class */
    public class GenericUserPrefObserver implements Observer<Response<Void>> {

        /* renamed from: f */
        private int f14296f;

        /* renamed from: g */
        private String f14297g;

        /* renamed from: h */
        private Command f14298h;

        GenericUserPrefObserver(UserPreference userPreference, String str, Command command) {
            this.f14296f = userPreference.getCommEventType();
            this.f14297g = str;
            this.f14298h = command;
        }

        /* renamed from: b */
        private void m5733b(ApiStatus apiStatus) {
            if (this.f14296f == MessageUserPreference.CommEventType.TEXT.getValue()) {
                DualPrefChangeCommand.this.f14287j = apiStatus;
            } else {
                DualPrefChangeCommand.this.f14286i = apiStatus;
            }
        }

        /* renamed from: a */
        public void onNext(Response<Void> response) {
            LogUtil.m5643d("DualPrefChangeCommand#GenericUserPrefObserver#onNext", "called");
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            LogUtil.m5643d("DualPrefChangeCommand#GenericUserPrefObserver#onComplete", "called");
            m5733b(ApiStatus.SUCCEEDED);
            DualPrefChangeCommand.this.m5746f();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            LogUtil.m5643d("DualPrefChangeCommand#GenericUserPrefObserver#onError", th.getMessage());
            DualPrefChangeCommand.this.m5737o(this.f14297g);
            this.f14298h.execute();
            m5733b(ApiStatus.FAILED);
            DualPrefChangeCommand.this.m5746f();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            LogUtil.m5643d("DualPrefChangeCommand#GenericUserPrefObserver#onSubscribe", "called");
        }
    }

    public DualPrefChangeCommand(@NonNull UserPreferenceUpdater userPreferenceUpdater, GenericUserPrefListener genericUserPrefListener, @NonNull Context context) {
        ApiStatus apiStatus = ApiStatus.PENDING;
        this.f14286i = apiStatus;
        this.f14287j = apiStatus;
        this.f14278a = userPreferenceUpdater.getOldCallerSetting();
        this.f14279b = userPreferenceUpdater.getNewCallerSetting();
        this.f14280c = userPreferenceUpdater.getCallerMode();
        this.f14281d = userPreferenceUpdater.getOldMessageUserPref();
        this.f14282e = userPreferenceUpdater.getNewMessageUserPref();
        this.f14283f = userPreferenceUpdater.getMessageMode();
        this.f14284g = genericUserPrefListener;
        this.f14285h = context;
    }

    /* renamed from: e */
    private String m5747e(UserPreference userPreference, ApiUtils.Mode mode) {
        String g = PhoneNumberHelper.m5412g(userPreference.getE164Number(), "");
        String string = this.f14285h.getString(m5739m(mode == ApiUtils.Mode.DELETE ? ApiUtils.m6836s(userPreference) : CallerSetting.Action.fromValue(userPreference.getAction()), userPreference.getCommEventType()));
        return mode == ApiUtils.Mode.DELETE ? this.f14285h.getString(C1517R.string.manage_list_error_remove_dialog_subtitle, g, string) : this.f14285h.getString(C1517R.string.manage_list_error_add_dialog_subtitle, g, string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public void m5746f() {
        ApiStatus apiStatus;
        ApiStatus apiStatus2 = this.f14286i;
        ApiStatus apiStatus3 = ApiStatus.PENDING;
        if (apiStatus2 != apiStatus3 && (apiStatus = this.f14287j) != apiStatus3) {
            ApiStatus apiStatus4 = ApiStatus.SUCCEEDED;
            if (apiStatus2 == apiStatus4 && apiStatus == apiStatus4) {
                this.f14284g.onSuccess();
                return;
            }
            m5741k("Call portion " + this.f14286i.name() + " | message portion " + this.f14287j.name());
        }
    }

    /* renamed from: g */
    private void m5745g(UserPreference userPreference, UserPreference userPreference2) {
        Command y = ApiUtils.m6824y(userPreference);
        String e = m5747e(userPreference2, ApiUtils.Mode.ADD);
        ApiUtils.m6872a(userPreference2);
        Observable<UserPreferenceStatus> a = ApiWrapper.m6789a(userPreference2);
        AddUserPrefObserver addUserPrefObserver = new AddUserPrefObserver(userPreference2, e, y);
        if (a != null) {
            a.subscribe(addUserPrefObserver);
        }
    }

    /* renamed from: h */
    private void m5744h(UserPreference userPreference, UserPreference userPreference2) {
        Command z = ApiUtils.m6822z(userPreference);
        String e = m5747e(userPreference2, ApiUtils.Mode.DELETE);
        ApiUtils.m6850l(userPreference2);
        ApiWrapper.m6777g(userPreference2).subscribe(new GenericUserPrefObserver(userPreference2, e, z));
    }

    /* renamed from: i */
    private void m5743i(UserPreference userPreference, UserPreference userPreference2, ApiUtils.Mode mode) {
        int i = C18961.f14290a[mode.ordinal()];
        if (i == 1) {
            m5745g(userPreference, userPreference2);
        } else if (i == 2) {
            m5742j(userPreference, userPreference2);
        } else if (i != 3) {
            m5741k("Unrecognized Mode: " + mode);
        } else {
            m5744h(userPreference, userPreference2);
        }
    }

    /* renamed from: j */
    private void m5742j(UserPreference userPreference, UserPreference userPreference2) {
        Command A = ApiUtils.m6898A(userPreference);
        String e = m5747e(userPreference2, ApiUtils.Mode.UPDATE);
        ApiUtils.m6829v0(userPreference2);
        ApiWrapper.m6768k0(userPreference2).subscribe(new GenericUserPrefObserver(userPreference2, e, A));
    }

    /* renamed from: k */
    private void m5741k(String str) {
        LogUtil.m5643d("DualPrefChangeCommand#fail", str);
        String l = m5740l();
        GenericUserPrefListener genericUserPrefListener = this.f14284g;
        if (genericUserPrefListener != null) {
            genericUserPrefListener.onFail(this, l);
        }
        m5738n();
    }

    @NonNull
    /* renamed from: l */
    private String m5740l() {
        return (this.f14288k != 1 || this.f14289l.isEmpty()) ? this.f14285h.getString(C1517R.string.manage_list_error_generic) : this.f14289l;
    }

    @StringRes
    /* renamed from: m */
    private int m5739m(CallerSetting.Action action, int i) {
        int i2 = C18961.f14291b[action.ordinal()];
        if (i2 == 1) {
            return C1517R.string.manage_list_error_allow_type;
        }
        if (i2 != 2) {
            return i2 != 3 ? C1517R.string.general_empty_string : C1517R.string.manage_list_error_voicemail_type;
        }
        return i == 2 ? C1517R.string.manage_list_error_message_block_type : C1517R.string.manage_list_error_block_type;
    }

    /* renamed from: n */
    private void m5738n() {
        ApiStatus apiStatus = ApiStatus.PENDING;
        this.f14286i = apiStatus;
        this.f14287j = apiStatus;
        this.f14288k = 0;
        m5737o("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public void m5737o(@NonNull String str) {
        this.f14288k++;
        this.f14289l = str;
    }

    @Override // com.tmobile.services.nameid.utility.Command
    public void execute() {
        m5743i(this.f14278a, this.f14279b, this.f14280c);
        m5743i(this.f14281d, this.f14282e, this.f14283f);
    }

    public String toString() {
        return "DualPrefChangeCommand{oldCallerSetting=" + this.f14278a + ", newCallerSetting=" + this.f14279b + ", callUserPrefMode=" + this.f14280c + ", oldMessageUserPref=" + this.f14281d + ", newMessageUserPref=" + this.f14282e + ", messageUserPrefMode=" + this.f14283f + ", listener=" + this.f14284g + ", context=" + this.f14285h + ", callPortionStatus=" + this.f14286i + ", messagePortionStatus=" + this.f14287j + ", failureCount=" + this.f14288k + ", effectiveFailureMessage='" + this.f14289l + "'}";
    }
}
