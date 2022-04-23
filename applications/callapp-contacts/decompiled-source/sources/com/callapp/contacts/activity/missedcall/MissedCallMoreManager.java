package com.callapp.contacts.activity.missedcall;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.missedcall.missedAnswer.MissedCallActivity;
import com.callapp.contacts.activity.missedcall.missedAnswer.NotAnsweredActivity;
import com.callapp.contacts.util.Activities;
import com.shehabic.droppy.DroppyMenuPopup;
import com.shehabic.droppy.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/MissedCallMoreManager.class */
public class MissedCallMoreManager {

    /* renamed from: a  reason: collision with root package name */
    private DroppyMenuPopup f13412a = null;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/MissedCallMoreManager$OnMissedCallMoreDialogItemClickListener.class */
    public interface OnMissedCallMoreDialogItemClickListener {
        void onDeleteClick();

        void onDontShowClick();

        void onShowLessClick();
    }

    static /* synthetic */ void a(MissedCallMoreManager missedCallMoreManager) {
        DroppyMenuPopup droppyMenuPopup = missedCallMoreManager.f13412a;
        if (droppyMenuPopup != null) {
            droppyMenuPopup.a(true);
        }
    }

    public final void a(Context context, View view, final OnMissedCallMoreDialogItemClickListener onMissedCallMoreDialogItemClickListener, boolean z) {
        DroppyMenuPopup.a aVar = new DroppyMenuPopup.a(view.getContext(), view);
        b bVar = new b(2131558900);
        View a2 = bVar.a(context);
        TextView textView = (TextView) a2.findViewById(2131362546);
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
        TextView textView2 = (TextView) a2.findViewById(2131363864);
        if (z) {
            textView2.setCompoundDrawablesWithIntrinsicBounds(2131231749, 0, 0, 0);
            textView2.setText(Activities.getString(2131887208));
        } else {
            textView2.setCompoundDrawablesWithIntrinsicBounds(2131231748, 0, 0, 0);
            textView2.setText(Activities.getString(2131887207));
        }
        textView2.setCompoundDrawablePadding(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166061));
        textView2.setGravity(16);
        TextView textView3 = (TextView) a2.findViewById(2131362623);
        textView3.setText(Activities.getString(2131887195));
        textView3.setCompoundDrawablesWithIntrinsicBounds(2131231746, 0, 0, 0);
        textView3.setCompoundDrawablePadding(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166061));
        textView3.setGravity(16);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.MissedCallMoreManager.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (onMissedCallMoreDialogItemClickListener != null) {
                    MissedCallMoreManager.a(MissedCallMoreManager.this);
                    onMissedCallMoreDialogItemClickListener.onDeleteClick();
                }
            }
        });
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.MissedCallMoreManager.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (onMissedCallMoreDialogItemClickListener != null) {
                    MissedCallMoreManager.a(MissedCallMoreManager.this);
                    onMissedCallMoreDialogItemClickListener.onShowLessClick();
                }
            }
        });
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.MissedCallMoreManager.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (onMissedCallMoreDialogItemClickListener != null) {
                    MissedCallMoreManager.a(MissedCallMoreManager.this);
                    onMissedCallMoreDialogItemClickListener.onDontShowClick();
                }
            }
        });
        DroppyMenuPopup c2 = aVar.a(bVar).c();
        this.f13412a = c2;
        c2.b();
    }
}
