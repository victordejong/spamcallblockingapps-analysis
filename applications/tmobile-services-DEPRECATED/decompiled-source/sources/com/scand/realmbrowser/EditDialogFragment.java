package com.scand.realmbrowser;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TabHost;
import android.widget.TextView;
import android.widget.TimePicker;
import androidx.annotation.NonNull;
import androidx.fragment.app.DialogFragment;
import io.realm.Realm;
import io.realm.RealmObject;
import java.lang.reflect.Field;
import java.util.Calendar;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/EditDialogFragment.class */
public class EditDialogFragment extends DialogFragment {

    /* renamed from: f */
    private RealmObject f12487f;

    /* renamed from: g */
    private Field f12488g;

    /* renamed from: h */
    private int f12489h;

    /* renamed from: i */
    private OnFieldEditDialogInteraction f12490i;

    /* renamed from: j */
    private EditText f12491j;

    /* renamed from: k */
    private TextView f12492k;

    /* renamed from: l */
    private TabHost f12493l;

    /* renamed from: m */
    private DatePicker f12494m;

    /* renamed from: n */
    private TimePicker f12495n;

    /* renamed from: o */
    private RadioGroup f12496o;

    /* renamed from: p */
    private TextView f12497p;

    /* renamed from: q */
    private final View.OnClickListener f12498q = new View.OnClickListener() { // from class: com.scand.realmbrowser.EditDialogFragment.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EditDialogFragment.this.m7755W0(null);
            EditDialogFragment.this.f12490i.mo7753z(EditDialogFragment.this.f12489h);
            EditDialogFragment.this.dismiss();
        }
    };

    /* renamed from: r */
    private final View.OnClickListener f12499r = new View.OnClickListener() { // from class: com.scand.realmbrowser.EditDialogFragment.3
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Class<?> type = EditDialogFragment.this.f12488g.getType();
            Object obj = null;
            if (type == String.class) {
                obj = EditDialogFragment.this.f12491j.getText().toString();
            } else {
                boolean z = true;
                if (type == Boolean.class || type == Boolean.TYPE) {
                    if (EditDialogFragment.this.f12496o.getCheckedRadioButtonId() != C1506R.C1509id.edit_boolean_true) {
                        z = false;
                    }
                    obj = Boolean.valueOf(z);
                } else if (type == Short.class || type == Short.TYPE) {
                    try {
                        obj = Short.valueOf(EditDialogFragment.this.f12491j.getText().toString());
                    } catch (NumberFormatException e) {
                        e.printStackTrace();
                    }
                } else if (type == Integer.class || type == Integer.TYPE) {
                    try {
                        obj = Integer.valueOf(EditDialogFragment.this.f12491j.getText().toString());
                    } catch (NumberFormatException e2) {
                        e2.printStackTrace();
                    }
                } else if (type == Long.class || type == Long.TYPE) {
                    try {
                        obj = Long.valueOf(EditDialogFragment.this.f12491j.getText().toString());
                    } catch (NumberFormatException e3) {
                        e3.printStackTrace();
                    }
                } else if (type == Float.class || type == Float.TYPE) {
                    try {
                        obj = Float.valueOf(EditDialogFragment.this.f12491j.getText().toString());
                    } catch (NumberFormatException e4) {
                        e4.printStackTrace();
                    }
                } else if (type == Double.class || type == Double.TYPE) {
                    try {
                        obj = Double.valueOf(EditDialogFragment.this.f12491j.getText().toString());
                    } catch (NumberFormatException e5) {
                        e5.printStackTrace();
                    }
                } else if (type == Date.class) {
                    Realm I0 = Realm.m3062I0(RealmBrowser.m7730f().m7729g(EditDialogFragment.this.f12487f.getClass().getSuperclass()));
                    Date date = (Date) RealmUtils.m7710i(EditDialogFragment.this.f12487f, EditDialogFragment.this.f12488g);
                    I0.close();
                    Calendar instance = Calendar.getInstance();
                    if (date != null) {
                        instance.setTime(date);
                    }
                    instance.set(1, EditDialogFragment.this.f12494m.getYear());
                    instance.set(2, EditDialogFragment.this.f12494m.getMonth());
                    instance.set(5, EditDialogFragment.this.f12494m.getDayOfMonth());
                    instance.set(11, EditDialogFragment.this.f12495n.getCurrentHour().intValue());
                    instance.set(12, EditDialogFragment.this.f12495n.getCurrentMinute().intValue());
                    obj = instance.getTime();
                } else if (type == Byte[].class || type == byte[].class) {
                    EditDialogFragment.this.dismiss();
                    return;
                }
            }
            if (obj != null) {
                EditDialogFragment.this.m7755W0(obj);
                EditDialogFragment.this.f12490i.mo7753z(EditDialogFragment.this.f12489h);
                EditDialogFragment.this.dismiss();
                return;
            }
            EditDialogFragment.this.m7754X0(type);
        }
    };

    /* renamed from: s */
    private final DialogInterface.OnClickListener f12500s = new DialogInterface.OnClickListener(this) { // from class: com.scand.realmbrowser.EditDialogFragment.4
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    };

    /* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/EditDialogFragment$OnFieldEditDialogInteraction.class */
    public interface OnFieldEditDialogInteraction {
        /* renamed from: z */
        void mo7753z(int i);
    }

    /* renamed from: S0 */
    public static EditDialogFragment m7759S0(RealmObject realmObject, Field field, int i) {
        RealmObjectHolder b = RealmObjectHolder.m7722b();
        b.m7719e(realmObject);
        b.m7720d(field);
        Bundle bundle = new Bundle();
        bundle.putInt("ream object position", i);
        EditDialogFragment editDialogFragment = new EditDialogFragment();
        editDialogFragment.setArguments(bundle);
        return editDialogFragment;
    }

    /* renamed from: T0 */
    private void m7758T0(View view) {
        this.f12491j = (EditText) view.findViewById(C1506R.C1509id.text_edit_dialog);
        this.f12492k = (TextView) view.findViewById(C1506R.C1509id.error_message);
        this.f12496o = (RadioGroup) view.findViewById(C1506R.C1509id.edit_boolean_group);
        this.f12493l = (TabHost) view.findViewById(C1506R.C1509id.tabHost);
        this.f12494m = (DatePicker) view.findViewById(C1506R.C1509id.tab_date);
        this.f12495n = (TimePicker) view.findViewById(C1506R.C1509id.tab_time);
        this.f12497p = (TextView) view.findViewById(C1506R.C1509id.array);
    }

    /* renamed from: U0 */
    private void m7757U0(RealmObject realmObject, Field field, Class<?> cls) {
        int i = 1;
        if (cls == String.class || cls == Short.class || cls == Short.TYPE || cls == Integer.class || cls == Integer.TYPE || cls == Long.class || cls == Long.TYPE || cls == Float.class || cls == Float.TYPE || cls == Double.class || cls == Double.TYPE) {
            Object i2 = RealmUtils.m7710i(realmObject, field);
            this.f12491j.setText(i2 == null ? "" : i2.toString());
            if (cls != String.class) {
                i = (cls == Float.class || cls == Float.TYPE || cls == Double.class || cls == Double.TYPE) ? 12290 : 4098;
            }
            this.f12491j.setInputType(i);
        } else if (cls == Boolean.class || cls == Boolean.TYPE) {
            Boolean bool = (Boolean) RealmUtils.m7710i(realmObject, field);
            int i3 = bool == null ? -1 : bool.booleanValue() ? C1506R.C1509id.edit_boolean_true : C1506R.C1509id.edit_boolean_false;
            if (i3 != -1) {
                ((RadioButton) this.f12496o.findViewById(i3)).setChecked(true);
            }
        } else if (cls == Date.class) {
            this.f12493l.setup();
            TabHost.TabSpec newTabSpec = this.f12493l.newTabSpec("Date");
            newTabSpec.setIndicator("Date");
            newTabSpec.setContent(C1506R.C1509id.tab_date);
            this.f12493l.addTab(newTabSpec);
            TabHost.TabSpec newTabSpec2 = this.f12493l.newTabSpec("Time");
            newTabSpec2.setIndicator("Time");
            newTabSpec2.setContent(C1506R.C1509id.tab_time);
            this.f12493l.addTab(newTabSpec2);
            Date date = (Date) RealmUtils.m7710i(realmObject, field);
            Calendar instance = Calendar.getInstance();
            if (date == null) {
                date = new Date();
            }
            instance.setTime(date);
            this.f12494m.updateDate(instance.get(1), instance.get(2), instance.get(5));
            this.f12495n.setCurrentHour(Integer.valueOf(instance.get(10)));
            this.f12495n.setCurrentMinute(Integer.valueOf(instance.get(12)));
            this.f12495n.setIs24HourView(Boolean.TRUE);
        } else if (cls == Byte[].class || cls == byte[].class) {
            byte[] bArr = (byte[]) RealmUtils.m7710i(realmObject, field);
            if (bArr == null) {
                this.f12497p.setText(C1506R.string.realm_browser_byte_array_is_null);
                return;
            }
            for (byte b : bArr) {
                this.f12497p.append(String.format("0x%02X", Byte.valueOf(b)) + " ");
            }
        }
    }

    /* renamed from: V0 */
    private Boolean m7756V0(Class cls) {
        return Boolean.valueOf(cls == Date.class || cls == Boolean.class || cls == String.class || cls == Short.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: W0 */
    public void m7755W0(Object obj) {
        Realm I0 = Realm.m3062I0(RealmBrowser.m7730f().m7729g(this.f12487f.getClass().getSuperclass()));
        I0.m3153d();
        RealmUtils.m7703p(this.f12487f, this.f12488g, obj);
        I0.m3148l();
        I0.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: X0 */
    public void m7754X0(Class<?> cls) {
        this.f12492k.setText(String.format(getString(C1506R.string.realm_browser_value_edit_error), this.f12491j.getText().toString(), cls.getSimpleName()));
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f12490i = (OnFieldEditDialogInteraction) activity;
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        Field field;
        this.f12487f = RealmObjectHolder.m7722b().m7721c();
        this.f12488g = RealmObjectHolder.m7722b().m7723a();
        this.f12489h = getArguments().getInt("ream object position");
        if (this.f12487f == null || (field = this.f12488g) == null) {
            throw new IllegalArgumentException("Use RealmObjectHolder to store data");
        }
        Class<?> type = field.getType();
        int i = (type == String.class || type == Short.class || type == Short.TYPE || type == Integer.class || type == Integer.TYPE || type == Long.class || type == Long.TYPE || type == Float.class || type == Float.TYPE || type == Double.class || type == Double.TYPE) ? C1506R.layout.realm_browser_text_edit_layout : (type == Boolean.class || type == Boolean.TYPE) ? C1506R.layout.realm_browser_boolean_edit_layout : type == Date.class ? C1506R.layout.realm_browser_date_edit_layout : (type == Byte[].class || type == byte[].class) ? C1506R.layout.realm_browser_byte_array_edit_layout : -1;
        View inflate = LayoutInflater.from(getActivity()).inflate(i, (ViewGroup) null);
        m7758T0(inflate);
        m7757U0(this.f12487f, this.f12488g, type);
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        if (i == -1) {
            builder.setMessage("Unknown field type.");
        } else {
            builder.setView(inflate);
        }
        builder.setPositiveButton(C1506R.string.realm_browser_ok, (DialogInterface.OnClickListener) null);
        if (!(type == Byte[].class || type == byte[].class)) {
            builder.setNegativeButton(C1506R.string.realm_browser_cancel, this.f12500s);
        }
        if (m7756V0(type).booleanValue()) {
            builder.setNeutralButton(C1506R.string.realm_browser_reset_to_null, (DialogInterface.OnClickListener) null);
        }
        AlertDialog create = builder.create();
        create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.scand.realmbrowser.EditDialogFragment.1
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                AlertDialog alertDialog = (AlertDialog) dialogInterface;
                alertDialog.getButton(-1).setOnClickListener(EditDialogFragment.this.f12499r);
                Button button = alertDialog.getButton(-3);
                if (button != null) {
                    button.setOnClickListener(EditDialogFragment.this.f12498q);
                }
            }
        });
        return create;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f12490i = null;
    }
}
