package com.mikepenz.iconics.context;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:com/mikepenz/iconics/context/InternalLayoutInflater.class */
class InternalLayoutInflater extends LayoutInflater {
    private static final String[] sClassPrefixList = {"android.widget.", "android.webkit."};
    private boolean mSetPrivateFactory = false;
    private Field mConstructorArgs = null;
    private final IconicsFactory mIconicsFactory = new IconicsFactory();

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(11)
    /* loaded from: classes-dex2jar.jar:com/mikepenz/iconics/context/InternalLayoutInflater$PrivateWrapperFactory2.class */
    public static class PrivateWrapperFactory2 extends WrapperFactory2 {
        private final InternalLayoutInflater mInflater;

        public PrivateWrapperFactory2(LayoutInflater.Factory2 factory2, InternalLayoutInflater internalLayoutInflater, IconicsFactory iconicsFactory) {
            super(factory2, iconicsFactory);
            this.mInflater = internalLayoutInflater;
        }

        @Override // com.mikepenz.iconics.context.InternalLayoutInflater.WrapperFactory2, android.view.LayoutInflater.Factory2
        public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
            return this.mIconicsFactory.onViewCreated(this.mInflater.createCustomViewInternal(view, this.mFactory2.onCreateView(view, str, context, attributeSet), str, context, attributeSet), context, attributeSet);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory.class */
    private static class WrapperFactory implements LayoutInflater.Factory {
        private final LayoutInflater.Factory mFactory;
        private final IconicsFactory mIconicsFactory;
        private final InternalLayoutInflater mInflater;

        public WrapperFactory(LayoutInflater.Factory factory, InternalLayoutInflater internalLayoutInflater, IconicsFactory iconicsFactory) {
            this.mFactory = factory;
            this.mInflater = internalLayoutInflater;
            this.mIconicsFactory = iconicsFactory;
        }

        @Override // android.view.LayoutInflater.Factory
        public View onCreateView(String str, Context context, AttributeSet attributeSet) {
            return this.mIconicsFactory.onViewCreated(this.mFactory.onCreateView(str, context, attributeSet), context, attributeSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(11)
    /* loaded from: classes-dex2jar.jar:com/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory2.class */
    public static class WrapperFactory2 implements LayoutInflater.Factory2 {
        protected final LayoutInflater.Factory2 mFactory2;
        protected final IconicsFactory mIconicsFactory;

        public WrapperFactory2(LayoutInflater.Factory2 factory2, IconicsFactory iconicsFactory) {
            this.mFactory2 = factory2;
            this.mIconicsFactory = iconicsFactory;
        }

        @Override // android.view.LayoutInflater.Factory2
        public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
            return this.mIconicsFactory.onViewCreated(this.mFactory2.onCreateView(view, str, context, attributeSet), context, attributeSet);
        }

        @Override // android.view.LayoutInflater.Factory
        public View onCreateView(String str, Context context, AttributeSet attributeSet) {
            return this.mIconicsFactory.onViewCreated(this.mFactory2.onCreateView(str, context, attributeSet), context, attributeSet);
        }
    }

    protected InternalLayoutInflater(Context context) {
        super(context);
        setUpLayoutFactories(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public InternalLayoutInflater(LayoutInflater layoutInflater, Context context, boolean z) {
        super(layoutInflater, context);
        setUpLayoutFactories(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Finally extract failed */
    public View createCustomViewInternal(View view, View view2, String str, Context context, AttributeSet attributeSet) {
        View view3 = view2;
        if (view2 == null) {
            view3 = view2;
            if (str.indexOf(46) > -1) {
                if (this.mConstructorArgs == null) {
                    this.mConstructorArgs = ReflectionUtils.getField(LayoutInflater.class, "mConstructorArgs");
                }
                Object[] objArr = (Object[]) ReflectionUtils.getValue(this.mConstructorArgs, this);
                Object obj = objArr[0];
                objArr[0] = context;
                ReflectionUtils.setValue(this.mConstructorArgs, this, objArr);
                try {
                    view3 = createView(str, null, attributeSet);
                    objArr[0] = obj;
                    ReflectionUtils.setValue(this.mConstructorArgs, this, objArr);
                } catch (ClassNotFoundException e) {
                    objArr[0] = obj;
                    ReflectionUtils.setValue(this.mConstructorArgs, this, objArr);
                    view3 = view2;
                } catch (Throwable th) {
                    objArr[0] = obj;
                    ReflectionUtils.setValue(this.mConstructorArgs, this, objArr);
                    throw th;
                }
            }
        }
        return view3;
    }

    private void setPrivateFactoryInternal() {
        if (!this.mSetPrivateFactory) {
            if (!(getContext() instanceof LayoutInflater.Factory2)) {
                this.mSetPrivateFactory = true;
                return;
            }
            Method method = ReflectionUtils.getMethod(LayoutInflater.class, "setPrivateFactory");
            if (method != null) {
                ReflectionUtils.invokeMethod(this, method, new PrivateWrapperFactory2((LayoutInflater.Factory2) getContext(), this, this.mIconicsFactory));
            }
            this.mSetPrivateFactory = true;
        }
    }

    private void setUpLayoutFactories(boolean z) {
        if (!z && getFactory2() != null && !(getFactory2() instanceof WrapperFactory2)) {
            setFactory2(getFactory2());
        }
    }

    @Override // android.view.LayoutInflater
    public LayoutInflater cloneInContext(Context context) {
        return new InternalLayoutInflater(this, context, true);
    }

    @Override // android.view.LayoutInflater
    public View inflate(XmlPullParser xmlPullParser, ViewGroup viewGroup, boolean z) {
        setPrivateFactoryInternal();
        return super.inflate(xmlPullParser, viewGroup, z);
    }

    @Override // android.view.LayoutInflater
    protected View onCreateView(View view, String str, AttributeSet attributeSet) throws ClassNotFoundException {
        return this.mIconicsFactory.onViewCreated(super.onCreateView(view, str, attributeSet), getContext(), attributeSet);
    }

    @Override // android.view.LayoutInflater
    protected View onCreateView(String str, AttributeSet attributeSet) throws ClassNotFoundException {
        View view = null;
        for (String str2 : sClassPrefixList) {
            try {
                view = createView(str, str2, attributeSet);
            } catch (ClassNotFoundException e) {
            }
        }
        View view2 = view;
        if (view == null) {
            view2 = super.onCreateView(str, attributeSet);
        }
        return this.mIconicsFactory.onViewCreated(view2, view2.getContext(), attributeSet);
    }

    @Override // android.view.LayoutInflater
    public void setFactory(LayoutInflater.Factory factory) {
        if (!(factory instanceof WrapperFactory)) {
            super.setFactory(new WrapperFactory(factory, this, this.mIconicsFactory));
        } else {
            super.setFactory(factory);
        }
    }

    @Override // android.view.LayoutInflater
    @TargetApi(11)
    public void setFactory2(LayoutInflater.Factory2 factory2) {
        if (!(factory2 instanceof WrapperFactory2)) {
            super.setFactory2(new WrapperFactory2(factory2, this.mIconicsFactory));
        } else {
            super.setFactory2(factory2);
        }
    }
}
