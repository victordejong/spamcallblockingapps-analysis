package com.callapp.contacts.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckedTextView;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/MultipleChoiceArrayAdapter.class */
public class MultipleChoiceArrayAdapter extends ArrayAdapter<MultipleChoiceRowData> {

    /* renamed from: a */
    private final Context f28774a;

    /* renamed from: b */
    private final ArrayList<MultipleChoiceRowData> f28775b;

    /* renamed from: c */
    private OnCheckedChangedListener f28776c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData.class */
    public static class MultipleChoiceRowData {

        /* renamed from: a */
        public final int f28779a;

        /* renamed from: b */
        public final String f28780b;

        /* renamed from: c */
        public boolean f28781c;

        public MultipleChoiceRowData(int i, String str, boolean z) {
            this.f28779a = i;
            this.f28780b = str;
            this.f28781c = z;
        }

        public MultipleChoiceRowData(String str, boolean z) {
            this.f28779a = 0;
            this.f28780b = str;
            this.f28781c = z;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/MultipleChoiceArrayAdapter$OnCheckedChangedListener.class */
    public interface OnCheckedChangedListener {
    }

    public MultipleChoiceArrayAdapter(Context context, int i, ArrayList<MultipleChoiceRowData> arrayList) {
        super(context, i, arrayList);
        this.f28774a = context;
        this.f28775b = arrayList;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        final CheckedTextView checkedTextView;
        if (view == null) {
            view = ((LayoutInflater) this.f28774a.getSystemService("layout_inflater")).inflate(2131558550, viewGroup, false);
            checkedTextView = (CheckedTextView) view.findViewById(2131362300);
            checkedTextView.setTextColor(ThemeUtils.getColor(2131100140));
            checkedTextView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.MultipleChoiceArrayAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    checkedTextView.toggle();
                    ((MultipleChoiceRowData) MultipleChoiceArrayAdapter.this.f28775b.get(((Integer) checkedTextView.getTag()).intValue())).f28781c = checkedTextView.isChecked();
                    if (MultipleChoiceArrayAdapter.this.f28776c != null) {
                        OnCheckedChangedListener unused = MultipleChoiceArrayAdapter.this.f28776c;
                    }
                }
            });
            ViewUtils.m27320a(view, ThemeUtils.getDrawable(2131230995));
            view.setTag(checkedTextView);
        } else {
            checkedTextView = (CheckedTextView) view.getTag();
        }
        checkedTextView.setTag(Integer.valueOf(i));
        MultipleChoiceRowData multipleChoiceRowData = this.f28775b.get(i);
        checkedTextView.setText(multipleChoiceRowData.f28780b);
        checkedTextView.setChecked(multipleChoiceRowData.f28781c);
        return view;
    }
}
