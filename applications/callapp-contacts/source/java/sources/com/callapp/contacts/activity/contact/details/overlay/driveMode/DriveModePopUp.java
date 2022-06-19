package com.callapp.contacts.activity.contact.details.overlay.driveMode;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.widget.C0954c;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.overlay.driveMode.DriveModePopUp;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.PrefsUtils;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImageNew;
import com.callapp.contacts.receiver.BluetoothReceiver;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.criteo.publisher.C8217a;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0016\u0018�� 72\u00020\u0001:\u000556789B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\b\u0010\u0017\u001a\u00020\u0018H\u0016J\u0013\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u001a¢\u0006\u0002\u0010\u001cJ\b\u0010\u001d\u001a\u00020\u001eH\u0005J\b\u0010\u001f\u001a\u00020 H\u0016J\u0010\u0010!\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020#H\u0002J\u0010\u0010$\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020#H\u0002J\b\u0010%\u001a\u00020\u0018H\u0002J\u0012\u0010&\u001a\u00020\u00182\b\u0010'\u001a\u0004\u0018\u00010(H\u0014J\u001a\u0010)\u001a\u00020#2\u0006\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u0010\u0010.\u001a\u00020\u00182\u0006\u0010/\u001a\u000200H\u0016J\u0018\u00101\u001a\u00020\u00182\u0006\u00102\u001a\u00020\b2\u0006\u00103\u001a\u00020\u001bH\u0002J\u000e\u00104\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020#R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n��R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\rX\u0082.¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\rX\u0082.¢\u0006\u0002\n��R*\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0011j\b\u0012\u0004\u0012\u00020\u0006`\u0012X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006:"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;", "Lcom/callapp/contacts/manager/popup/DialogPopup;", "driveModeOverlayViewInterface", "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$DriveModeOverlayViewInterface;", "bluetoothDevicesList", "", "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;", "isFromBluetoothReceiver", "", "carViewType", "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;", "(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$DriveModeOverlayViewInterface;Ljava/util/List;ZLcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;)V", "driveModeDescription", "Landroid/widget/TextView;", "leftButtonText", "rightButtonText", "selectedBluetoothDeviceData", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "getSelectedBluetoothDeviceData", "()Ljava/util/ArrayList;", "setSelectedBluetoothDeviceData", "(Ljava/util/ArrayList;)V", "dismiss", "", "getAddressStringArray", "", "", "()[Ljava/lang/String;", "getLayoutResource", "", "getPopupType", "Lcom/callapp/contacts/manager/popup/Popup$DialogType;", "initCommonView", "itemView", "Landroid/view/View;", "initGeneral", "initOutgoing", "onDialogCancelled", "dialog", "Landroid/content/DialogInterface;", "ovViewCreated", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "setDialogWindowSize", "window", "Landroid/view/Window;", "setRightButton", "isEnabled", "buttonText", "setupViews", "BluetoothDeviceViewHolder", "CarViewType", "Companion", "DriveModeOverlayViewInterface", "ListAdapter", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp.class */
public class DriveModePopUp extends DialogPopup {

    /* renamed from: a */
    public static final Companion f22102a = new Companion(null);

    /* renamed from: b */
    private TextView f22103b;

    /* renamed from: c */
    private TextView f22104c;

    /* renamed from: d */
    private TextView f22105d;

    /* renamed from: e */
    private ArrayList<BluetoothDeviceData> f22106e;

    /* renamed from: f */
    private DriveModeOverlayViewInterface f22107f;

    /* renamed from: g */
    private final List<BluetoothDeviceData> f22108g;

    /* renamed from: h */
    private final boolean f22109h;

    /* renamed from: i */
    private final CarViewType f22110i;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\b\u0086\u0004\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aJ\u0010\u0010\u0015\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cH\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u001d"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "inflater", "Landroid/view/LayoutInflater;", "parent", "Landroid/view/ViewGroup;", "(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V", "bluetoothDeviceImage", "Landroid/widget/ImageView;", "clickSurface", "Landroid/view/View;", "getClickSurface", "()Landroid/view/View;", "setClickSurface", "(Landroid/view/View;)V", "deviceName", "Landroid/widget/TextView;", "driveModeCheckBox", "Landroid/widget/CheckBox;", "getDriveModeCheckBox", "()Landroid/widget/CheckBox;", "setDriveModeCheckBox", "(Landroid/widget/CheckBox;)V", "bind", "", "bluetoothDeviceData", "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;", "isChecked", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder.class */
    public final class BluetoothDeviceViewHolder extends RecyclerView.AbstractC2657v {

        /* renamed from: r */
        TextView f22111r;

        /* renamed from: s */
        CheckBox f22112s;

        /* renamed from: t */
        View f22113t;

        /* renamed from: u */
        final /* synthetic */ DriveModePopUp f22114u;

        /* renamed from: v */
        private ImageView f22115v;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BluetoothDeviceViewHolder(DriveModePopUp driveModePopUp, LayoutInflater inflater, ViewGroup parent) {
            super(inflater.inflate(2131558645, parent, false));
            C18524p.m3840d(inflater, "inflater");
            C18524p.m3840d(parent, "parent");
            this.f22114u = driveModePopUp;
            View findViewById = this.itemView.findViewById(2131362559);
            C18524p.m3843b(findViewById, "itemView.findViewById(R.id.deviceName)");
            this.f22111r = (TextView) findViewById;
            View findViewById2 = this.itemView.findViewById(2131362113);
            C18524p.m3843b(findViewById2, "itemView.findViewById(R.id.bluetoothDeviceImage)");
            this.f22115v = (ImageView) findViewById2;
            View findViewById3 = this.itemView.findViewById(2131362640);
            C18524p.m3843b(findViewById3, "itemView.findViewById(R.id.driveModeCheckBox)");
            this.f22112s = (CheckBox) findViewById3;
            View findViewById4 = this.itemView.findViewById(2131362367);
            C18524p.m3843b(findViewById4, "itemView.findViewById(R.id.clickSurface)");
            this.f22113t = findViewById4;
        }

        public final CheckBox getDriveModeCheckBox() {
            return this.f22112s;
        }

        public final void setDriveModeCheckBox(boolean z) {
            int color = z ? ThemeUtils.getColor(2131099784) : ThemeUtils.getColor(2131100140);
            this.f22111r.setTextColor(color);
            this.f22115v.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;", "", "(Ljava/lang/String;I)V", "GENERAL", PhoneStateManager.CALL_STATE_OUTGOING_RINGING_STRING, "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType.class */
    public enum CarViewType {
        GENERAL,
        OUTGOING
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0006"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$Companion;", "", "()V", "MAX_CAR_DEVICES", "", "MAX_SEEN_TIME", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$DriveModeOverlayViewInterface;", "", "driveModeOverlayViewResult", "", "isDeviceSelected", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$DriveModeOverlayViewInterface.class */
    public interface DriveModeOverlayViewInterface {
        /* renamed from: a */
        void mo29601a(boolean z);
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018��2\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016J\u001c\u0010\n\u001a\u00020\u000b2\n\u0010\f\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\r\u001a\u00020\tH\u0016J\u001c\u0010\u000e\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\tH\u0016R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, m4298d2 = {"Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$ListAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;", "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;", "list", "", "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;", "(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;Ljava/util/List;)V", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$ListAdapter.class */
    public final class ListAdapter extends RecyclerView.AbstractC2626a<BluetoothDeviceViewHolder> {

        /* renamed from: a */
        final /* synthetic */ DriveModePopUp f22116a;

        /* renamed from: b */
        private final List<BluetoothDeviceData> f22117b;

        public ListAdapter(DriveModePopUp driveModePopUp, List<BluetoothDeviceData> list) {
            C18524p.m3840d(list, "list");
            this.f22116a = driveModePopUp;
            this.f22117b = list;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public final int getItemCount() {
            return this.f22117b.size();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public final /* synthetic */ void onBindViewHolder(BluetoothDeviceViewHolder bluetoothDeviceViewHolder, int i) {
            final BluetoothDeviceViewHolder holder = bluetoothDeviceViewHolder;
            C18524p.m3840d(holder, "holder");
            final BluetoothDeviceData bluetoothDeviceData = this.f22117b.get(i);
            C18524p.m3840d(bluetoothDeviceData, "bluetoothDeviceData");
            holder.f22111r.setText(bluetoothDeviceData.getDeviceName());
            if (holder.f22114u.getSelectedBluetoothDeviceData().contains(bluetoothDeviceData)) {
                holder.f22112s.setChecked(true);
            }
            holder.setDriveModeCheckBox(holder.f22112s.isChecked());
            C0954c.m43982a(holder.f22112s, new ColorStateList((int[][]) new int[]{new int[]{16842912}, new int[0]}, new int[]{ThemeUtils.getColor(2131099784), ThemeUtils.getColor(2131100140)}));
            holder.f22113t.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.driveMode.DriveModePopUp$BluetoothDeviceViewHolder$bind$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AndroidUtils.m27630a(view, 1);
                    DriveModePopUp.BluetoothDeviceViewHolder.this.getDriveModeCheckBox().toggle();
                    if (!DriveModePopUp.BluetoothDeviceViewHolder.this.getDriveModeCheckBox().isChecked()) {
                        DriveModePopUp.BluetoothDeviceViewHolder.this.f22114u.getSelectedBluetoothDeviceData().remove(bluetoothDeviceData);
                    } else {
                        DriveModePopUp.BluetoothDeviceViewHolder.this.f22114u.getSelectedBluetoothDeviceData().add(bluetoothDeviceData);
                    }
                    DriveModePopUp.BluetoothDeviceViewHolder bluetoothDeviceViewHolder2 = DriveModePopUp.BluetoothDeviceViewHolder.this;
                    bluetoothDeviceViewHolder2.setDriveModeCheckBox(bluetoothDeviceViewHolder2.getDriveModeCheckBox().isChecked());
                    DriveModePopUp driveModePopUp = DriveModePopUp.BluetoothDeviceViewHolder.this.f22114u;
                    ArrayList<BluetoothDeviceData> selectedBluetoothDeviceData = DriveModePopUp.BluetoothDeviceViewHolder.this.f22114u.getSelectedBluetoothDeviceData();
                    boolean z = selectedBluetoothDeviceData == null || selectedBluetoothDeviceData.isEmpty();
                    String string = Activities.getString(2131886629);
                    C18524p.m3843b(string, "Activities.getString(R.string.connect)");
                    driveModePopUp.m30841a(true ^ z, string);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public final /* synthetic */ BluetoothDeviceViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            C18524p.m3840d(parent, "parent");
            LayoutInflater inflater = LayoutInflater.from(parent.getContext());
            DriveModePopUp driveModePopUp = this.f22116a;
            C18524p.m3843b(inflater, "inflater");
            return new BluetoothDeviceViewHolder(driveModePopUp, inflater, parent);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f22118a;

        static {
            int[] iArr = new int[CarViewType.values().length];
            f22118a = iArr;
            iArr[CarViewType.GENERAL.ordinal()] = 1;
            iArr[CarViewType.OUTGOING.ordinal()] = 2;
        }
    }

    public DriveModePopUp(DriveModeOverlayViewInterface driveModeOverlayViewInterface, List<BluetoothDeviceData> list, boolean z, CarViewType carViewType) {
        C18524p.m3840d(carViewType, "carViewType");
        this.f22107f = driveModeOverlayViewInterface;
        this.f22108g = list;
        this.f22109h = z;
        this.f22110i = carViewType;
        this.f22106e = new ArrayList<>();
    }

    public /* synthetic */ DriveModePopUp(DriveModeOverlayViewInterface driveModeOverlayViewInterface, List list, boolean z, CarViewType carViewType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : driveModeOverlayViewInterface, (i & 2) != 0 ? null : list, (i & 4) != 0 ? false : z, carViewType);
    }

    /* renamed from: a */
    private final void m30844a(View view) {
        String str;
        AnalyticsManager.get().m28450a(Constants.CAR_MODE, "ViewCarModePopUp");
        if (this.f22109h) {
            Prefs.f26621ha.m28170a(3);
        }
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        List<String> m28175a = PrefsUtils.m28175a(Prefs.f26561gT);
        if (!m28175a.isEmpty()) {
            for (String deviceAddress : m28175a) {
                BluetoothDevice remoteDevice = defaultAdapter.getRemoteDevice(deviceAddress);
                C18524p.m3843b(remoteDevice, "mBluetoothAdapter.getRemoteDevice(deviceAddress)");
                String deviceName = remoteDevice.getName();
                if (StringUtils.m26045b((CharSequence) deviceName) && StringUtils.m26045b((CharSequence) deviceAddress)) {
                    ArrayList<BluetoothDeviceData> arrayList = this.f22106e;
                    C18524p.m3843b(deviceName, "deviceName");
                    C18524p.m3843b(deviceAddress, "deviceAddress");
                    arrayList.add(new BluetoothDeviceData(deviceName, deviceAddress));
                }
            }
        }
        final boolean z = !this.f22106e.isEmpty();
        TextView driveModeTitle = (TextView) view.findViewById(2131362643);
        C18524p.m3843b(driveModeTitle, "driveModeTitle");
        driveModeTitle.setText(Activities.getString(2131886798));
        driveModeTitle.setTextColor(ThemeUtils.getColor(2131100140));
        driveModeTitle.setVisibility(0);
        TextView driveModeSubTitle = (TextView) view.findViewById(2131362642);
        C18524p.m3843b(driveModeSubTitle, "driveModeSubTitle");
        driveModeSubTitle.setText(Activities.getText(2131886797));
        driveModeSubTitle.setTextColor(ThemeUtils.getColor(2131100108));
        driveModeSubTitle.setVisibility(0);
        TextView textView = this.f22105d;
        if (textView == null) {
            C18524p.m3848a("driveModeDescription");
        }
        textView.setText(Activities.getText(2131886791));
        View divider = view.findViewById(2131362615);
        C18524p.m3843b(divider, "divider");
        divider.setVisibility(0);
        divider.setBackgroundColor(ThemeUtils.getColor(2131099891));
        RecyclerView bluetoothDevices = (RecyclerView) view.findViewById(2131362114);
        C18524p.m3843b(bluetoothDevices, "bluetoothDevices");
        bluetoothDevices.setVisibility(0);
        bluetoothDevices.setLayoutManager(new LinearLayoutManager(CallAppApplication.get()));
        List<BluetoothDeviceData> list = this.f22108g;
        if (list != null) {
            bluetoothDevices.setAdapter(new ListAdapter(this, list));
        }
        String string = Activities.getString(2131886629);
        C18524p.m3843b(string, "Activities.getString(R.string.connect)");
        m30841a(z, string);
        TextView textView2 = this.f22103b;
        if (textView2 == null) {
            C18524p.m3848a("rightButtonText");
        }
        textView2.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.driveMode.DriveModePopUp$initGeneral$2
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View v) {
                C18524p.m3840d(v, "v");
                AnalyticsManager.get().m28450a(Constants.CAR_MODE, "ClickCarModeConnect");
                PrefsUtils.m28173a(new String[6], Prefs.f26561gT);
                PrefsUtils.m28173a(DriveModePopUp.this.getAddressStringArray(), Prefs.f26561gT);
                boolean isCarBluetoothConnected = BluetoothReceiver.isCarBluetoothConnected();
                Prefs.f26562gU.set(Boolean.valueOf(isCarBluetoothConnected));
                if (!z && isCarBluetoothConnected) {
                    Prefs.f26563gV.set(Boolean.TRUE);
                    Prefs.f26564gW.set(Boolean.TRUE);
                }
                DriveModePopUp.this.dismiss();
            }
        });
        TextView textView3 = this.f22104c;
        if (textView3 == null) {
            C18524p.m3848a("leftButtonText");
        }
        if (!this.f22109h || Prefs.f26621ha.get().intValue() <= 1) {
            AnalyticsManager.get().m28450a(Constants.CAR_MODE, "ClickCarModeDisable");
            str = Activities.getString(2131886772);
        } else {
            AnalyticsManager.get().m28450a(Constants.CAR_MODE, "ClickCarModeNeverShow");
            str = Activities.getString(2131886792);
        }
        textView3.setText(str);
        TextView textView4 = this.f22104c;
        if (textView4 == null) {
            C18524p.m3848a("leftButtonText");
        }
        textView4.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.driveMode.DriveModePopUp$initGeneral$3
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View v) {
                boolean z2;
                C18524p.m3840d(v, "v");
                PrefsUtils.m28173a(new String[6], Prefs.f26561gT);
                Prefs.f26562gU.set(Boolean.FALSE);
                z2 = DriveModePopUp.this.f22109h;
                if (z2 && Prefs.f26621ha.get().intValue() > 1) {
                    Prefs.f26621ha.set(3);
                }
                DriveModePopUp.this.getSelectedBluetoothDeviceData().clear();
                DriveModePopUp.this.dismiss();
            }
        });
    }

    /* renamed from: a */
    public final void m30841a(boolean z, String str) {
        TextView textView = this.f22103b;
        if (textView == null) {
            C18524p.m3848a("rightButtonText");
        }
        textView.setEnabled(z);
        int color = z ? ThemeUtils.getColor(2131099784) : ThemeUtils.getColor(2131099919);
        DialogMessageWithTopImageNew.Companion companion = DialogMessageWithTopImageNew.f27121a;
        TextView textView2 = this.f22103b;
        if (textView2 == null) {
            C18524p.m3848a("rightButtonText");
        }
        DialogMessageWithTopImageNew.Companion.m27968a(textView2, 2131232141, Integer.valueOf(color), Integer.valueOf(ThemeUtils.getColor(2131099784)), 0, Integer.valueOf(ThemeUtils.getColor(2131100228)), new SpannableString(str), null, true, true);
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void dismiss() {
        DriveModeOverlayViewInterface driveModeOverlayViewInterface = this.f22107f;
        if (driveModeOverlayViewInterface != null) {
            driveModeOverlayViewInterface.mo29601a(CollectionUtils.m26068b(PrefsUtils.m28175a(Prefs.f26561gT)));
        }
        super.dismiss();
    }

    public final String[] getAddressStringArray() {
        String[] strArr = new String[this.f22106e.size()];
        int i = 0;
        for (BluetoothDeviceData bluetoothDeviceData : this.f22106e) {
            strArr[i] = bluetoothDeviceData.getDeviceAddress();
            i++;
        }
        return strArr;
    }

    protected final int getLayoutResource() {
        return 2131558644;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.roundedCenter;
    }

    public final ArrayList<BluetoothDeviceData> getSelectedBluetoothDeviceData() {
        return this.f22106e;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void onDialogCancelled(DialogInterface dialogInterface) {
        super.onDialogCancelled(dialogInterface);
        dismiss();
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater inflater, ViewGroup viewGroup) {
        C18524p.m3840d(inflater, "inflater");
        View view = inflater.inflate(getLayoutResource(), (ViewGroup) null);
        C18524p.m3843b(view, "view");
        setupViews(view);
        return view;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        C18524p.m3840d(window, "window");
        window.setLayout(-1, -2);
    }

    public final void setupViews(View itemView) {
        C18524p.m3840d(itemView, "itemView");
        Prefs.f26565gX.m28170a(3);
        View findViewById = itemView.findViewById(2131363673);
        C18524p.m3843b(findViewById, "itemView.findViewById(R.id.rightButtonText)");
        this.f22103b = (TextView) findViewById;
        View findViewById2 = itemView.findViewById(2131363177);
        C18524p.m3843b(findViewById2, "itemView.findViewById(R.id.leftButtonText)");
        TextView textView = (TextView) findViewById2;
        this.f22104c = textView;
        if (textView == null) {
            C18524p.m3848a("leftButtonText");
        }
        textView.setTextColor(ThemeUtils.getColor(2131099890));
        View findViewById3 = itemView.findViewById(2131362641);
        C18524p.m3843b(findViewById3, "itemView.findViewById(R.id.driveModeDescription)");
        TextView textView2 = (TextView) findViewById3;
        this.f22105d = textView2;
        if (textView2 == null) {
            C18524p.m3848a("driveModeDescription");
        }
        textView2.setTextColor(ThemeUtils.getColor(2131100140));
        ImageView closeButton = (ImageView) itemView.findViewById(C8217a.C8218a.closeButton);
        C18524p.m3843b(closeButton, "closeButton");
        closeButton.setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131100140), PorterDuff.Mode.SRC_IN));
        closeButton.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.driveMode.DriveModePopUp$initCommonView$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AnalyticsManager.get().m28450a(Constants.CAR_MODE, "ClickCarModeClose");
                DriveModePopUp.this.dismiss();
            }
        });
        ViewUtils.m27294c(itemView.findViewById(2131362470), 2131232170, ThemeUtils.getColor(2131099686));
        int i = WhenMappings.f22118a[this.f22110i.ordinal()];
        if (i == 1) {
            m30844a(itemView);
        } else if (i != 2) {
        } else {
            AnalyticsManager.get().m28450a(Constants.CAR_MODE, "ViewCarModePopUpOutgoing");
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            SpannableString spannableString = new SpannableString(Activities.getText(2131886794));
            spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 0);
            spannableString.setSpan(new RelativeSizeSpan(1.3f), 0, spannableString.length(), 0);
            SpannableString spannableString2 = new SpannableString(Activities.getText(2131886795));
            spannableString2.setSpan(new RelativeSizeSpan(1.0f), 0, spannableString2.length(), 0);
            SpannableString spannableString3 = new SpannableString(Activities.getText(2131886796));
            spannableString3.setSpan(new RelativeSizeSpan(0.8f), 0, spannableString3.length(), 0);
            spannableStringBuilder.append((CharSequence) spannableString);
            spannableStringBuilder.append((CharSequence) org.apache.commons.lang3.StringUtils.f67179LF);
            spannableStringBuilder.append((CharSequence) org.apache.commons.lang3.StringUtils.f67179LF);
            spannableStringBuilder.append((CharSequence) spannableString2);
            spannableStringBuilder.append((CharSequence) org.apache.commons.lang3.StringUtils.f67179LF);
            spannableStringBuilder.append((CharSequence) spannableString3);
            TextView textView3 = this.f22104c;
            if (textView3 == null) {
                C18524p.m3848a("leftButtonText");
            }
            textView3.setText(Activities.getText(2131887301));
            TextView textView4 = this.f22104c;
            if (textView4 == null) {
                C18524p.m3848a("leftButtonText");
            }
            textView4.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.driveMode.DriveModePopUp$initOutgoing$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DriveModePopUp.this.dismiss();
                }
            });
            TextView textView5 = this.f22105d;
            if (textView5 == null) {
                C18524p.m3848a("driveModeDescription");
            }
            textView5.setText(spannableStringBuilder);
            String string = Activities.getString(2131888248);
            C18524p.m3843b(string, "Activities.getString(R.string.yes)");
            m30841a(true, string);
            TextView textView6 = this.f22103b;
            if (textView6 == null) {
                C18524p.m3848a("rightButtonText");
            }
            textView6.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.driveMode.DriveModePopUp$initOutgoing$2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Prefs.f26564gW.set(Boolean.TRUE);
                    DriveModePopUp.this.dismiss();
                }
            });
        }
    }
}
