package com.callapp.contacts.activity.missedcall;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.missedcall.missedAnswer.MissedCallActivity;
import com.callapp.contacts.activity.missedcall.missedAnswer.NotAnsweredActivity;
import com.callapp.contacts.util.Activities;
import com.shehabic.droppy.C17097b;
import com.shehabic.droppy.DroppyMenuPopup;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/MissedCallMoreManager.class */
public class MissedCallMoreManager {

    /* renamed from: a */
    private DroppyMenuPopup f23844a = null;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/MissedCallMoreManager$OnMissedCallMoreDialogItemClickListener.class */
    public interface OnMissedCallMoreDialogItemClickListener {
        void onDeleteClick();

        void onDontShowClick();

        void onShowLessClick();
    }

    /* renamed from: a */
    static /* synthetic */ void m29815a(MissedCallMoreManager missedCallMoreManager) {
        DroppyMenuPopup droppyMenuPopup = missedCallMoreManager.f23844a;
        if (droppyMenuPopup != null) {
            droppyMenuPopup.m5879a(true);
        }
    }

    /* renamed from: a */
    public final void m29816a(Context context, View view, final OnMissedCallMoreDialogItemClickListener onMissedCallMoreDialogItemClickListener, boolean z) {
        DroppyMenuPopup.C17093a c17093a = new DroppyMenuPopup.C17093a(view.getContext(), view);
        C17097b c17097b = new C17097b(2131558900);
        View mo5867a = c17097b.mo5867a(context);
        TextView textView = (TextView) mo5867a.findViewById(2131362546);
        textView.setText(Activities.getString(2131887194));
        textView.setCompoundDrawablesWithIntrinsicBounds(2131231745, 0, 0, 0);
        textView.setCompoundDrawablePadding(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166061));
        textView.setGravity(16);
        if (context instanceof MissedCallActivity) {
            textView.setVisibility(8);
        }
        if (context instanceof NotAnsweredActivity) {
            textView.setVisibility(8);
        }
        TextView textView2 = (TextView) mo5867a.findViewById(2131363864);
        if (z) {
            textView2.setCompoundDrawablesWithIntrinsicBounds(2131231749, 0, 0, 0);
            textView2.setText(Activities.getString(2131887208));
        } else {
            textView2.setCompoundDrawablesWithIntrinsicBounds(2131231748, 0, 0, 0);
            textView2.setText(Activities.getString(2131887207));
        }
        textView2.setCompoundDrawablePadding(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166061));
        textView2.setGravity(16);
        TextView textView3 = (TextView) mo5867a.findViewById(2131362623);
        textView3.setText(Activities.getString(2131887195));
        textView3.setCompoundDrawablesWithIntrinsicBounds(2131231746, 0, 0, 0);
        textView3.setCompoundDrawablePadding(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166061));
        textView3.setGravity(16);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.MissedCallMoreManager.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (onMissedCallMoreDialogItemClickListener != null) {
                    MissedCallMoreManager.m29815a(MissedCallMoreManager.this);
                    onMissedCallMoreDialogItemClickListener.onDeleteClick();
                }
            }
        });
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.MissedCallMoreManager.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (onMissedCallMoreDialogItemClickListener != null) {
                    MissedCallMoreManager.m29815a(MissedCallMoreManager.this);
                    onMissedCallMoreDialogItemClickListener.onShowLessClick();
                }
            }
        });
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.MissedCallMoreManager.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (onMissedCallMoreDialogItemClickListener != null) {
                    MissedCallMoreManager.m29815a(MissedCallMoreManager.this);
                    onMissedCallMoreDialogItemClickListener.onDontShowClick();
                }
            }
        });
        DroppyMenuPopup m5871c = c17093a.m5873a(c17097b).m5871c();
        this.f23844a = m5871c;
        m5871c.m5878b();
    }
}
