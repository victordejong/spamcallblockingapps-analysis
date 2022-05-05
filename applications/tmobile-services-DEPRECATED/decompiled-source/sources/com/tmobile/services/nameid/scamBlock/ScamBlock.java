package com.tmobile.services.nameid.scamBlock;

import android.content.Context;
import com.tmobile.services.nameid.utility.DateUtils;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\t\u0018�� \u0003:\u0006\u0003\u0004\u0005\u0006\u0007\bB\u0007¢\u0006\u0004\b\u0001\u0010\u0002¨\u0006\t"}, d2 = {"Lcom/tmobile/services/nameid/scamBlock/ScamBlock;", "<init>", "()V", "Companion", "Model", "Presenter", "State", "StateListener", "View", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlock.class */
public final class ScamBlock {

    /* renamed from: d */
    public static final Companion f13766d = new Companion(null);

    /* renamed from: a */
    private static final long f13763a = DateUtils.f14253b.longValue() * 10;

    /* renamed from: b */
    private static final long f13764b = DateUtils.f14252a.longValue() * 3;
    @NotNull

    /* renamed from: c */
    private static final RealmScamBlockModel f13765c = new RealmScamBlockModel(f13764b, f13763a);

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003R\u0016\u0010\u0004\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0003R\u0019\u0010\u0006\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/tmobile/services/nameid/scamBlock/ScamBlock$Companion;", "", "LOCKOUT_DURATION", "J", "PENDING_STATE_DURATION", "Lcom/tmobile/services/nameid/scamBlock/RealmScamBlockModel;", "defaultModel", "Lcom/tmobile/services/nameid/scamBlock/RealmScamBlockModel;", "getDefaultModel", "()Lcom/tmobile/services/nameid/scamBlock/RealmScamBlockModel;", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlock$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        /* renamed from: a */
        public final RealmScamBlockModel m6335a() {
            return ScamBlock.f13765c;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0007\u0010\u0006J\u000f\u0010\t\u001a\u00020\bH&¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\bH&¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\bH&¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0011\u001a\u00020\u0010H&¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0015\u001a\u00020\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H&¢\u0006\u0004\b\u0015\u0010\u0016R\u001c\u0010\u001c\u001a\u00020\u00178&@&X¦\u000e¢\u0006\f\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"Lcom/tmobile/services/nameid/scamBlock/ScamBlock$Model;", "Lkotlin/Any;", "Landroid/content/Context;", "context", "", "activateScamBlock", "(Landroid/content/Context;)V", "deactivateScamBlock", "Ljava/util/Date;", "getLockoutExpiration", "()Ljava/util/Date;", "cutoff", "", "getScamsBlockedCount", "(Ljava/util/Date;)I", "getScamsReceivedCount", "", "isScamNotifyEnabled", "()Z", "Lcom/tmobile/services/nameid/scamBlock/ScamBlock$StateListener;", "listener", "setScamBlockStateListener", "(Lcom/tmobile/services/nameid/scamBlock/ScamBlock$StateListener;)V", "Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;", "getState", "()Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;", "setState", "(Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;)V", "state", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlock$Model.class */
    public interface Model {
        /* renamed from: a */
        int mo6330a(@NotNull Date date);

        /* renamed from: b */
        int mo6329b(@NotNull Date date);

        /* renamed from: c */
        void mo6334c(@Nullable StateListener stateListener);

        /* renamed from: e */
        void mo6333e(@NotNull Context context);

        /* renamed from: g */
        boolean mo6332g();

        @NotNull
        State getState();

        /* renamed from: h */
        void mo6331h(@NotNull Context context);
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\bf\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H&¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0005H&¢\u0006\u0004\b\u000b\u0010\t¨\u0006\f"}, d2 = {"Lcom/tmobile/services/nameid/scamBlock/ScamBlock$Presenter;", "Lkotlin/Any;", "Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;", "getState", "()Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;", "", "userConfirmed", "", "onScamBlockClicked", "(Z)V", "visible", "onViewVisiblity", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlock$Presenter.class */
    public interface Presenter {
        /* renamed from: c */
        void mo6283c(boolean z);

        /* renamed from: d */
        void mo6282d(boolean z);

        @NotNull
        State getState();
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0001\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;", "Ljava/lang/Enum;", "<init>", "(Ljava/lang/String;I)V", "ON", "OFF", "PENDING_ON", "PENDING_OFF", "FAKE_ON", "FAKE_OFF", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlock$State.class */
    public enum State {
        ON,
        OFF,
        PENDING_ON,
        PENDING_OFF,
        FAKE_ON,
        FAKE_OFF
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\bf\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH&¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\f\u0010\u0006¨\u0006\r"}, d2 = {"Lcom/tmobile/services/nameid/scamBlock/ScamBlock$StateListener;", "Lkotlin/Any;", "Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;", "newState", "", "onScamBlockStateChanged", "(Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;)V", "desiredState", "", "errorCode", "onUpdateFail", "(Lcom/tmobile/services/nameid/scamBlock/ScamBlock$State;Ljava/lang/String;)V", "onUpdateSuccess", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlock$StateListener.class */
    public interface StateListener {
        /* renamed from: a */
        void mo6285a(@NotNull State state);

        /* renamed from: b */
        void mo6284b(@NotNull State state, @NotNull String str);

        /* renamed from: e */
        void mo6281e(@NotNull State state);
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\bf\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H&¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H&¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0002H&¢\u0006\u0004\b\b\u0010\u0004J\u0017\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH&¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH&¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0002H&¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0002H&¢\u0006\u0004\b\u0014\u0010\u0004¨\u0006\u0015"}, d2 = {"Lcom/tmobile/services/nameid/scamBlock/ScamBlock$View;", "Lkotlin/Any;", "", "playPulseAnimation", "()V", "setActive", "setInactive", "setPendingActive", "setPendingInactive", "", "n", "setScamCallCount", "(I)V", "", "add", "", "errorCode", "showAddRemoveError", "(ZLjava/lang/String;)V", "showConfirmationDialog", "showEnableNotifications", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlock$View.class */
    public interface View {
        /* renamed from: A */
        void mo6306A();

        /* renamed from: M */
        void mo6298M(boolean z, @NotNull String str);

        /* renamed from: Q */
        void mo6293Q();

        /* renamed from: V */
        void mo6291V();

        /* renamed from: a */
        void mo6290a(int i);

        /* renamed from: h0 */
        void mo6289h0();

        /* renamed from: m0 */
        void mo6288m0();

        /* renamed from: p */
        void mo6287p();

        /* renamed from: t0 */
        void mo6286t0();
    }
}
