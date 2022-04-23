package com.tmobile.services.nameid.model;

import android.content.Context;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.model.CategorySetting;
import com.tmobile.services.nameid.utility.ContactLookup;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.WidgetUtils;
import io.realm.AbstractC2158x73aa4aea;
import io.realm.OrderedRealmCollectionImpl;
import io.realm.Realm;
import io.realm.RealmObject;
import io.realm.RealmQuery;
import io.realm.Sort;
import io.realm.annotations.Ignore;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import java.util.Date;
import java.util.Objects;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import org.simpleframework.xml.strategy.Name;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/CallerSetting.class */
public class CallerSetting extends RealmObject implements UserPreference, AbstractC2158x73aa4aea {
    private static final String LOG_TAG = "CallerSetting#";
    private int action;
    @Ignore
    private Caller cachedCaller;
    @Nonnull
    private String callerId;
    @PrimaryKey
    private String e164Number;
    private boolean fromMigration;
    private boolean pending;
    private String preferenceId;
    private boolean updateFailed;

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/CallerSetting$Action.class */
    public enum Action {
        APPROVED(0),
        BLOCKED(1),
        VOICEMAIL(3),
        NONE(4);
        
        private final int value;

        Action(int i) {
            this.value = i;
        }

        public static Action fromValue(int i) {
            Action[] values;
            for (Action action : values()) {
                if (action.getValue() == i) {
                    return action;
                }
            }
            return NONE;
        }

        public int getValue() {
            return this.value;
        }
    }

    public CallerSetting() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$action(Action.NONE.getValue());
        realmSet$callerId("");
        this.cachedCaller = null;
    }

    @Override // com.tmobile.services.nameid.model.UserPreference
    public void addCallerForSetting(String str, @Nullable Realm realm) {
        final Caller caller = new Caller();
        caller.setNumberAsInput(str);
        caller.setE164Number(str);
        caller.setDate(new Date(0L));
        caller.setNameSuppressed(Caller.shouldSuppressName());
        caller.setCategorySuppressed(Caller.shouldSuppressCategory());
        if (realm != null) {
            Caller.storeInRealm(caller, realm);
        } else {
            try {
                final Realm G0 = Realm.m3064G0();
                G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.model.a
                    @Override // io.realm.Realm.Transaction
                    /* renamed from: a */
                    public final void mo3037a(Realm realm2) {
                        Caller.storeInRealm(Caller.this, G0);
                    }
                });
                if (G0 != null) {
                    G0.close();
                }
            } catch (Exception e) {
                LogUtil.m5641f(LOG_TAG, "Error storing Caller in Realm: ", e);
            }
        }
        setCallerId(caller.getId());
    }

    public CallerSetting copy() {
        CallerSetting callerSetting = new CallerSetting();
        callerSetting.setAction(realmGet$action());
        callerSetting.setE164Number(realmGet$e164Number());
        callerSetting.setPending(realmGet$pending());
        callerSetting.setPreferenceId(realmGet$preferenceId());
        callerSetting.setCallerId(realmGet$callerId());
        callerSetting.setCachedCaller(this.cachedCaller);
        return callerSetting;
    }

    @Override // com.tmobile.services.nameid.model.UserPreference
    public int getAction() {
        return realmGet$action();
    }

    @Override // com.tmobile.services.nameid.model.UserPreference
    @Nullable
    public Caller getCaller() {
        Caller caller;
        Caller caller2 = this.cachedCaller;
        if (caller2 != null) {
            return caller2;
        }
        Realm G0 = Realm.m3064G0();
        try {
            RealmQuery Q0 = G0.m3053Q0(Caller.class);
            Q0.m2882t(Name.MARK, realmGet$callerId());
            Caller caller3 = (Caller) Q0.m2916G();
            if (caller3 != null) {
                caller = caller3.copy();
                this.cachedCaller = caller;
            } else {
                RealmQuery Q02 = G0.m3053Q0(Caller.class);
                Q02.m2882t("e164Number", realmGet$e164Number());
                OrderedRealmCollectionImpl s = Q02.m2918E().m3089s("date", Sort.DESCENDING);
                caller = s.isEmpty() ? null : ((Caller) s.get(0)).copy();
            }
            if (G0 != null) {
                G0.close();
            }
            return caller;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.UserPreference
    @Nonnull
    public String getCallerId() {
        return realmGet$callerId();
    }

    @Override // com.tmobile.services.nameid.model.UserPreference
    public int getCommEventType() {
        return 1;
    }

    @Override // com.tmobile.services.nameid.model.UserPreference
    public String getE164Number() {
        return realmGet$e164Number();
    }

    @Override // com.tmobile.services.nameid.model.UserPreference
    public String getPreferenceId() {
        return realmGet$preferenceId();
    }

    public boolean isFromMigration() {
        return realmGet$fromMigration();
    }

    @Override // com.tmobile.services.nameid.model.UserPreference
    public boolean isPending() {
        return realmGet$pending();
    }

    @Override // com.tmobile.services.nameid.model.UserPreference
    public boolean isUpdateFailed() {
        return realmGet$updateFailed();
    }

    @Override // io.realm.AbstractC2158x73aa4aea
    public int realmGet$action() {
        return this.action;
    }

    @Override // io.realm.AbstractC2158x73aa4aea
    public String realmGet$callerId() {
        return this.callerId;
    }

    @Override // io.realm.AbstractC2158x73aa4aea
    public String realmGet$e164Number() {
        return this.e164Number;
    }

    @Override // io.realm.AbstractC2158x73aa4aea
    public boolean realmGet$fromMigration() {
        return this.fromMigration;
    }

    @Override // io.realm.AbstractC2158x73aa4aea
    public boolean realmGet$pending() {
        return this.pending;
    }

    @Override // io.realm.AbstractC2158x73aa4aea
    public String realmGet$preferenceId() {
        return this.preferenceId;
    }

    @Override // io.realm.AbstractC2158x73aa4aea
    public boolean realmGet$updateFailed() {
        return this.updateFailed;
    }

    @Override // io.realm.AbstractC2158x73aa4aea
    public void realmSet$action(int i) {
        this.action = i;
    }

    @Override // io.realm.AbstractC2158x73aa4aea
    public void realmSet$callerId(String str) {
        this.callerId = str;
    }

    @Override // io.realm.AbstractC2158x73aa4aea
    public void realmSet$e164Number(String str) {
        this.e164Number = str;
    }

    @Override // io.realm.AbstractC2158x73aa4aea
    public void realmSet$fromMigration(boolean z) {
        this.fromMigration = z;
    }

    @Override // io.realm.AbstractC2158x73aa4aea
    public void realmSet$pending(boolean z) {
        this.pending = z;
    }

    @Override // io.realm.AbstractC2158x73aa4aea
    public void realmSet$preferenceId(String str) {
        this.preferenceId = str;
    }

    @Override // io.realm.AbstractC2158x73aa4aea
    public void realmSet$updateFailed(boolean z) {
        this.updateFailed = z;
    }

    @Override // com.tmobile.services.nameid.model.UserPreference
    public void setAction(int i) {
        realmSet$action(i);
    }

    public void setCachedCaller(Caller caller) {
        this.cachedCaller = caller;
    }

    @Override // com.tmobile.services.nameid.model.UserPreference
    public void setCallerId(@Nonnull String str) {
        realmSet$callerId(str);
        this.cachedCaller = null;
    }

    @Override // com.tmobile.services.nameid.model.UserPreference
    public void setCommEventType(int i) {
    }

    @Override // com.tmobile.services.nameid.model.UserPreference
    public void setE164Number(String str) {
        realmSet$e164Number(str);
    }

    public void setFromMigration(boolean z) {
        realmSet$fromMigration(z);
    }

    @Override // com.tmobile.services.nameid.model.UserPreference
    public void setPending(boolean z) {
        realmSet$pending(z);
    }

    @Override // com.tmobile.services.nameid.model.UserPreference
    public void setPreferenceId(String str) {
        realmSet$preferenceId(str);
    }

    @Override // com.tmobile.services.nameid.model.UserPreference
    public void setUpdateFailed(boolean z) {
        realmSet$updateFailed(z);
    }

    public String toString() {
        return "CallerSetting{e164Number='" + realmGet$e164Number() + "', action=" + realmGet$action() + ", preferenceId='" + realmGet$preferenceId() + "', pending=" + realmGet$pending() + ", updateFailed=" + realmGet$updateFailed() + ", fromMigration=" + realmGet$fromMigration() + ", callerId='" + realmGet$callerId() + "', cachedCaller=" + this.cachedCaller + '}';
    }

    @Override // com.tmobile.services.nameid.model.UserPreference
    public String tryGetDisplayString() {
        CallerDetailsData h = WidgetUtils.m5232h(realmGet$e164Number());
        Contact e = ContactLookup.m5824d().m5823e(getE164Number());
        String str = "";
        if (e != null && !e.getName().equals("")) {
            str = e.getName();
        } else if (h == null || h.getCategory() == CategorySetting.BucketId.NONE.getValue()) {
            if (h != null) {
                str = h.getDisplayName();
            }
        } else if (MainApplication.m7528l() != null) {
            str = ((Context) Objects.requireNonNull(MainApplication.m7528l())).getString(h.getCategoryRes());
        }
        return str;
    }
}
