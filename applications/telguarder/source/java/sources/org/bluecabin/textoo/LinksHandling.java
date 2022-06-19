package org.bluecabin.textoo;

import org.bluecabin.textoo.LinksHandling;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/LinksHandling.class */
public interface LinksHandling<T, C extends LinksHandling<T, C>> {
    C addLinksHandler(LinksHandler linksHandler);
}
