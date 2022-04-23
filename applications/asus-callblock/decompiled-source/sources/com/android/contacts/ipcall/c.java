package com.android.contacts.ipcall;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/android/contacts/ipcall/c.class */
public class c extends DialogFragment {
    private static final String c = c.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public View.OnClickListener f1498a = new View.OnClickListener() { // from class: com.android.contacts.ipcall.c.3
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            b bVar = (b) view.getTag();
            if (bVar != null) {
                bVar.a(!bVar.f1507b.isSelected());
            }
            c.this.a(c.this.a());
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public View.OnClickListener f1499b = new View.OnClickListener() { // from class: com.android.contacts.ipcall.c.4
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            b bVar = (b) view.getTag();
            if (bVar != null) {
                bVar.a(!bVar.f1507b.isSelected());
            }
            c.this.a(c.this.a());
        }
    };
    private a d;
    private Dialog e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/ipcall/c$a.class */
    public final class a extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        ArrayList<AsusIpCodeItem> f1504a = new ArrayList<>();
        private Context c;
        private LayoutInflater d;

        public a(Context context) {
            this.c = context;
            if (context != null) {
                this.d = LayoutInflater.from(context);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public AsusIpCodeItem getItem(int i) {
            return (this.f1504a == null || i >= this.f1504a.size()) ? null : this.f1504a.get(i);
        }

        public final void a(ArrayList<AsusIpCodeItem> arrayList) {
            if (arrayList.size() != 0) {
                this.f1504a.clear();
                Iterator<AsusIpCodeItem> it = arrayList.iterator();
                while (it.hasNext()) {
                    this.f1504a.add(it.next());
                }
                if (this.c.getResources().getString(2131755713).equalsIgnoreCase(this.f1504a.get(0).f1489a)) {
                    this.f1504a.remove(0);
                }
            }
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return this.f1504a == null ? 0 : this.f1504a.size();
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            AsusIpCodeItem a2 = getItem(i);
            View inflate = this.d.inflate(2131427649, viewGroup, false);
            b bVar = new b(inflate, i, a2);
            inflate.setTag(bVar);
            bVar.f1506a.setText(a2.f1489a);
            bVar.f1507b.setSelected(a2.c);
            bVar.f1507b.setOnClickListener(c.this.f1498a);
            inflate.setOnClickListener(c.this.f1499b);
            return inflate;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/ipcall/c$b.class */
    final class b {

        /* renamed from: a  reason: collision with root package name */
        final TextView f1506a;

        /* renamed from: b  reason: collision with root package name */
        public final ImageView f1507b;
        private int d;
        private AsusIpCodeItem e;

        public b(View view, int i, AsusIpCodeItem asusIpCodeItem) {
            this.d = i;
            this.f1506a = (TextView) view.findViewById(2131296958);
            this.f1507b = (ImageView) view.findViewById(2131296655);
            this.f1507b.setTag(this);
            this.e = asusIpCodeItem;
        }

        public final void a(boolean z) {
            this.e.c = z;
            this.f1507b.setSelected(z);
        }
    }

    /* renamed from: com.android.contacts.ipcall.c$c  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/ipcall/c$c.class */
    public interface AbstractC0043c {
        void a(ArrayList<AsusIpCodeItem> arrayList);
    }

    public static c a(ArrayList<AsusIpCodeItem> arrayList) {
        c cVar = new c();
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("ip_code_list", arrayList);
        cVar.setArguments(bundle);
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        if (this.e == null) {
            return;
        }
        if (z) {
            ((AlertDialog) this.e).getButton(-1).setEnabled(true);
        } else {
            ((AlertDialog) this.e).getButton(-1).setEnabled(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a() {
        boolean z;
        if (this.d != null) {
            if (this.d.f1504a != null && this.d.f1504a.size() != 0) {
                Iterator<AsusIpCodeItem> it = this.d.f1504a.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it.next().c) {
                            z = true;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        return z;
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (!(activity instanceof AbstractC0043c)) {
            throw new ClassCastException(activity.toString() + " must implement RemoveIpCodeListener");
        }
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        ArrayList<AsusIpCodeItem> arrayList;
        if (this.d == null) {
            this.d = new a(getActivity());
        }
        if (bundle != null) {
            arrayList = bundle.getParcelableArrayList("ip_code_list");
        } else {
            Bundle arguments = getArguments();
            if (arguments != null) {
                ArrayList<AsusIpCodeItem> parcelableArrayList = arguments.getParcelableArrayList("ip_code_list");
                arrayList = parcelableArrayList;
                if (parcelableArrayList == null) {
                    arrayList = new ArrayList<>();
                }
            } else {
                Log.d(c, "getArguments() returns null !");
                arrayList = new ArrayList<>();
            }
        }
        this.d.a(arrayList);
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(2131755714);
        builder.setAdapter(this.d, null);
        builder.setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.ipcall.c.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ArrayList<AsusIpCodeItem> arrayList2 = c.this.d.f1504a;
                ArrayList<AsusIpCodeItem> arrayList3 = new ArrayList<>();
                Iterator<AsusIpCodeItem> it = arrayList2.iterator();
                while (it.hasNext()) {
                    AsusIpCodeItem next = it.next();
                    if (!next.c) {
                        arrayList3.add(next);
                    }
                }
                ((AbstractC0043c) c.this.getActivity()).a(arrayList3);
            }
        });
        builder.setNegativeButton(getResources().getString(17039360), new DialogInterface.OnClickListener() { // from class: com.android.contacts.ipcall.c.2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
            }
        });
        this.e = builder.create();
        return this.e;
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        a(a());
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle != null && this.d != null) {
            bundle.putParcelableArrayList("ip_code_list", this.d.f1504a);
        }
    }
}
