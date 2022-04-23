package com.callapp.contacts.widget;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.text.method.Touch;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.MotionEvent;
import android.widget.TextView;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/CustomLinkMovementMethod.class */
public class CustomLinkMovementMethod extends LinkMovementMethod {

    /* renamed from: a  reason: collision with root package name */
    private ClickableSpan f16473a;

    @Override // android.text.method.LinkMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public boolean canSelectArbitrarily() {
        return true;
    }

    @Override // android.text.method.LinkMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public void initialize(TextView textView, Spannable spannable) {
        Selection.setSelection(spannable, spannable.length());
    }

    @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public void onTakeFocus(TextView textView, Spannable spannable, int i) {
        if ((i & 130) == 0 || textView.getLayout() == null) {
            Selection.setSelection(spannable, spannable.length());
        }
    }

    @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1 || action == 0) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int totalPaddingLeft = textView.getTotalPaddingLeft();
            int totalPaddingTop = textView.getTotalPaddingTop();
            int scrollX = textView.getScrollX();
            int scrollY = textView.getScrollY();
            Layout layout = textView.getLayout();
            int offsetForHorizontal = layout.getOffsetForHorizontal(layout.getLineForVertical((y - totalPaddingTop) + scrollY), (x - totalPaddingLeft) + scrollX);
            ClickableSpan[] clickableSpanArr = (ClickableSpan[]) spannable.getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class);
            if (clickableSpanArr.length != 0) {
                ClickableSpan clickableSpan = clickableSpanArr[0];
                if (action == 1) {
                    if (clickableSpan instanceof URLSpan) {
                        Uri parse = Uri.parse(((URLSpan) clickableSpan).getURL());
                        Context context = textView.getContext();
                        Intent intent = new Intent("android.intent.action.VIEW", parse);
                        intent.setFlags(268435456);
                        intent.putExtra("create_new_tab", context.getPackageName());
                        if (Activities.a(intent)) {
                            context.startActivity(intent);
                        }
                    } else {
                        clickableSpan.onClick(textView);
                    }
                    ClickableSpan clickableSpan2 = this.f16473a;
                    if (clickableSpan2 == null) {
                        return true;
                    }
                    clickableSpan2.onClick(textView);
                    return true;
                } else if (action != 0) {
                    return true;
                } else {
                    Selection.setSelection(spannable, spannable.getSpanStart(clickableSpan), spannable.getSpanEnd(clickableSpan));
                    return true;
                }
            } else {
                Selection.removeSelection(spannable);
            }
        }
        return Touch.onTouchEvent(textView, spannable, motionEvent);
    }

    public void setClickListener(ClickableSpan clickableSpan) {
        this.f16473a = clickableSpan;
    }
}
