package org.bluecabin.textoo.impl;

import android.view.View;
import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1.class */
public final class LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1 extends AbstractFunction1<View, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ LinksHandlingImpl$$anonfun$toResult$1 $outer;
    public final String url$1;

    public LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1(LinksHandlingImpl$$anonfun$toResult$1 linksHandlingImpl$$anonfun$toResult$1, String str) {
        Objects.requireNonNull(linksHandlingImpl$$anonfun$toResult$1);
        this.$outer = linksHandlingImpl$$anonfun$toResult$1;
        this.url$1 = str;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((View) obj));
    }

    public final boolean apply(View view) {
        return this.$outer.org$bluecabin$textoo$impl$LinksHandlingImpl$$anonfun$$$outer().handlers().find(new C2521xe7dd27e(this, view)).nonEmpty();
    }
}
