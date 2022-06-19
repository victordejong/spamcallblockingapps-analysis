package carbon.component;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.lang.reflect.InvocationTargetException;
import ta0;
/* loaded from: classes-dex2jar.jar:carbon/component/ComponentView.class */
public class ComponentView<Type extends ta0> extends FrameLayout {

    /* renamed from: a */
    public Type f2239a;

    public ComponentView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m5391a(attributeSet);
    }

    public ComponentView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m5391a(attributeSet);
    }

    /* renamed from: a */
    public final void m5391a(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, p80.ComponentView, 0, 0);
        if (obtainStyledAttributes != null) {
            int resourceId = obtainStyledAttributes.getResourceId(p80.ComponentView_carbon_id, 0);
            int resourceId2 = obtainStyledAttributes.getResourceId(p80.ComponentView_carbon_layout, 0);
            String string = obtainStyledAttributes.getString(p80.ComponentView_carbon_type);
            try {
                ta0 ua0Var = (resourceId2 == 0 || string != null) ? (ta0) Class.forName(string).getConstructor(ViewGroup.class).newInstance(this) : new ua0(this, resourceId2);
                View view = ua0Var.getView();
                view.setTag(ua0Var);
                view.setId(resourceId);
                addView(view);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
            } catch (InstantiationException e3) {
                e3.printStackTrace();
            } catch (NoSuchMethodException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
            obtainStyledAttributes.recycle();
        }
    }

    public Type getComponent() {
        return this.f2239a;
    }
}
