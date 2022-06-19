package org.bluecabin.textoo.impl;

import android.view.View;
import java.util.Objects;
import org.bluecabin.textoo.LinksHandler;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* renamed from: org.bluecabin.textoo.impl.LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1$$anonfun$apply$1 */
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1$$anonfun$apply$1.class */
public final class C2521xe7dd27e extends AbstractFunction1<LinksHandler, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1 $outer;
    private final View v$1;

    public C2521xe7dd27e(LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1 linksHandlingImpl$$anonfun$toResult$1$$anonfun$1, View view) {
        Objects.requireNonNull(linksHandlingImpl$$anonfun$toResult$1$$anonfun$1);
        this.$outer = linksHandlingImpl$$anonfun$toResult$1$$anonfun$1;
        this.v$1 = view;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((LinksHandler) obj));
    }

    public final boolean apply(LinksHandler linksHandler) {
        return linksHandler.onClick(this.v$1, this.$outer.url$1);
    }
}
