package com.tmobile.services.nameid.p007ui.manage;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.StringRes;
import androidx.cardview.widget.CardView;
import androidx.core.content.ContextCompat;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.p007ui.NameIDUIComponent;
import com.tmobile.services.nameid.p007ui.UIAnalyticConfigurator;
import com.tmobile.services.nameid.utility.LogUtil;
/* renamed from: com.tmobile.services.nameid.ui.manage.ManageButton */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/manage/ManageButton.class */
public class ManageButton extends CardView implements NameIDUIComponent {

    /* renamed from: o */
    ImageView f14133o;

    /* renamed from: p */
    TextView f14134p;

    /* renamed from: q */
    LinearLayout f14135q;

    /* renamed from: r */
    private boolean f14136r;

    /* renamed from: s */
    private boolean f14137s;

    /* renamed from: t */
    private ManageAction f14138t;

    /* renamed from: u */
    private OnCheckedChangeListener f14139u;

    /* renamed from: com.tmobile.services.nameid.ui.manage.ManageButton$ManageAction */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/manage/ManageButton$ManageAction.class */
    public enum ManageAction {
        BLOCK_MESSAGES(0) { // from class: com.tmobile.services.nameid.ui.manage.ManageButton.ManageAction.1
            @Override // com.tmobile.services.nameid.p007ui.manage.ManageButton.ManageAction
            @StringRes
            public int getContentDescRes() {
                return C1517R.string.con_desc_block_messages_list_icon;
            }

            @Override // com.tmobile.services.nameid.p007ui.manage.ManageButton.ManageAction
            @DrawableRes
            public int getIconRes(Boolean bool, Boolean bool2) {
                return !bool2.booleanValue() ? C1517R.C1519drawable.ic_detail_icon_block_message_disabled : bool.booleanValue() ? C1517R.C1519drawable.ic_detail_icon_block_message : C1517R.C1519drawable.ic_detail_icon_block_message_inactive;
            }

            @Override // com.tmobile.services.nameid.p007ui.manage.ManageButton.ManageAction
            @StringRes
            public int getTitleRes() {
                return C1517R.string.manage_block_messages_title;
            }
        },
        BLOCK_CALLS(1) { // from class: com.tmobile.services.nameid.ui.manage.ManageButton.ManageAction.2
            @Override // com.tmobile.services.nameid.p007ui.manage.ManageButton.ManageAction
            @StringRes
            public int getContentDescRes() {
                return C1517R.string.con_desc_block_list_icon;
            }

            @Override // com.tmobile.services.nameid.p007ui.manage.ManageButton.ManageAction
            @DrawableRes
            public int getIconRes(Boolean bool, Boolean bool2) {
                return !bool2.booleanValue() ? C1517R.C1519drawable.ic_call_blocked_disabled : bool.booleanValue() ? C1517R.C1519drawable.ic_call_blocked : C1517R.C1519drawable.ic_call_blocked_inactive;
            }

            @Override // com.tmobile.services.nameid.p007ui.manage.ManageButton.ManageAction
            @StringRes
            public int getTitleRes() {
                return C1517R.string.manage_block_caller_title;
            }
        },
        SEND_CALLS_TO_VM(2) { // from class: com.tmobile.services.nameid.ui.manage.ManageButton.ManageAction.3
            @Override // com.tmobile.services.nameid.p007ui.manage.ManageButton.ManageAction
            @StringRes
            public int getContentDescRes() {
                return C1517R.string.con_desc_voicemail_list_icon;
            }

            @Override // com.tmobile.services.nameid.p007ui.manage.ManageButton.ManageAction
            @DrawableRes
            public int getIconRes(Boolean bool, Boolean bool2) {
                return !bool2.booleanValue() ? C1517R.C1519drawable.ic_voicemail_disabled : bool.booleanValue() ? C1517R.C1519drawable.ic_voicemail : C1517R.C1519drawable.ic_voicemail_inactive;
            }

            @Override // com.tmobile.services.nameid.p007ui.manage.ManageButton.ManageAction
            @StringRes
            public int getTitleRes() {
                return C1517R.string.manage_voicemail_title;
            }
        },
        ALWAYS_ALLOW_CALLS(3) { // from class: com.tmobile.services.nameid.ui.manage.ManageButton.ManageAction.4
            @Override // com.tmobile.services.nameid.p007ui.manage.ManageButton.ManageAction
            @StringRes
            public int getContentDescRes() {
                return C1517R.string.con_desc_approved_list_icon;
            }

            @Override // com.tmobile.services.nameid.p007ui.manage.ManageButton.ManageAction
            @DrawableRes
            public int getIconRes(Boolean bool, Boolean bool2) {
                return !bool2.booleanValue() ? C1517R.C1519drawable.ic_fave_disabled : bool.booleanValue() ? C1517R.C1519drawable.ic_fave : C1517R.C1519drawable.ic_fave_inactive;
            }

            @Override // com.tmobile.services.nameid.p007ui.manage.ManageButton.ManageAction
            @StringRes
            public int getTitleRes() {
                return C1517R.string.manage_allow_title;
            }
        };
        
        private int value;

        ManageAction(int i) {
            this.value = i;
        }

        @StringRes
        public abstract int getContentDescRes();

        @DrawableRes
        public abstract int getIconRes(Boolean bool, Boolean bool2);

        public int getTextColor(Boolean bool, Boolean bool2) {
            return !bool2.booleanValue() ? C1517R.C1518color.light_grey : bool.booleanValue() ? C1517R.C1518color.white : C1517R.C1518color.grey1;
        }

        @StringRes
        public abstract int getTitleRes();

        public int getValue() {
            return this.value;
        }
    }

    /* renamed from: com.tmobile.services.nameid.ui.manage.ManageButton$OnCheckedChangeListener */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/manage/ManageButton$OnCheckedChangeListener.class */
    public interface OnCheckedChangeListener {
        /* renamed from: a */
        void m6042a(ManageButton manageButton, boolean z);
    }

    public ManageButton(Context context) {
        this(context, null);
    }

    public ManageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f14136r = true;
        this.f14138t = null;
        this.f14139u = null;
        View inflate = LayoutInflater.from(context).inflate(C1517R.layout.manage_button, (ViewGroup) this, true);
        this.f14133o = (ImageView) inflate.findViewById(C1517R.C1520id.manage_button_icon);
        this.f14134p = (TextView) inflate.findViewById(C1517R.C1520id.manage_button_text);
        this.f14135q = (LinearLayout) inflate.findViewById(C1517R.C1520id.manage_button_container);
        setBackground(ContextCompat.m19673f(getContext(), C1517R.C1519drawable.manage_button_bg_disabled));
    }

    private void setGreyedOut(boolean z) {
        if (z) {
            this.f14133o.setImageResource(this.f14138t.getIconRes(Boolean.valueOf(this.f14137s), Boolean.FALSE));
            this.f14134p.setTextColor(getResources().getColor(C1517R.C1518color.light_grey));
            return;
        }
        this.f14133o.setImageResource(this.f14138t.getIconRes(Boolean.valueOf(this.f14137s), Boolean.TRUE));
        this.f14134p.setTextColor(getResources().getColor(C1517R.C1518color.grey1));
    }

    @Override // com.tmobile.services.nameid.p007ui.NameIDUIComponent
    public String getAnalyticMessage() {
        try {
            return getResources().getResourceEntryName(getId());
        } catch (Resources.NotFoundException | NullPointerException e) {
            LogUtil.m5631p("ManageButton#getAnalyticMessage()", "Resource name could not be retrieved. " + e.toString());
            return "";
        }
    }

    public boolean isChecked() {
        return this.f14137s;
    }

    public void setChecked(boolean z) {
        if (this.f14136r) {
            this.f14137s = z;
            OnCheckedChangeListener onCheckedChangeListener = this.f14139u;
            if (onCheckedChangeListener != null) {
                onCheckedChangeListener.m6042a(this, z);
            }
            ManageAction manageAction = this.f14138t;
            if (manageAction != null) {
                this.f14133o.setImageResource(manageAction.getIconRes(Boolean.valueOf(z), Boolean.valueOf(this.f14136r)));
                this.f14134p.setTextColor(ContextCompat.m19675d(getContext(), this.f14138t.getTextColor(Boolean.valueOf(z), Boolean.valueOf(this.f14136r))));
                if (!z || !this.f14136r) {
                    setBackground(ContextCompat.m19673f(getContext(), C1517R.C1519drawable.manage_button_bg_disabled));
                } else {
                    setBackground(ContextCompat.m19673f(getContext(), C1517R.C1519drawable.manage_button_bg_enabled));
                }
            }
        }
    }

    public void setContent(ManageAction manageAction) {
        this.f14138t = manageAction;
        this.f14133o.setContentDescription(getResources().getString(manageAction.getContentDescRes()));
        this.f14134p.setText(manageAction.getTitleRes());
        this.f14134p.setTextColor(getResources().getColor(C1517R.C1518color.grey1));
        setChecked(false);
        m6044w();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        this.f14136r = z;
        setGreyedOut(!z);
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.f14139u = onCheckedChangeListener;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f14135q.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f14135q.setOnTouchListener(onTouchListener);
    }

    /* renamed from: w */
    public void m6044w() {
        m6043x(getAnalyticMessage());
    }

    /* renamed from: x */
    public void m6043x(String str) {
        UIAnalyticConfigurator.m6241k().m6239m(str, this);
    }
}
