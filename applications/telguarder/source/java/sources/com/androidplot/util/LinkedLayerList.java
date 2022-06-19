package com.androidplot.util;

import java.util.LinkedList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/androidplot/util/LinkedLayerList.class */
public class LinkedLayerList<Type> extends LinkedList<Type> implements Layerable<Type> {
    private LayerListOrganizer<Type> organizer = new LayerListOrganizer<>(this);

    public void addToBottom(Type type) {
        this.organizer.addToBottom(type);
    }

    public void addToTop(Type type) {
        this.organizer.addToTop(type);
    }

    @Override // com.androidplot.util.Layerable
    public List<Type> elements() {
        return this.organizer.elements();
    }

    @Override // com.androidplot.util.Layerable
    public boolean moveAbove(Type type, Type type2) {
        return this.organizer.moveAbove(type, type2);
    }

    @Override // com.androidplot.util.Layerable
    public boolean moveBeneath(Type type, Type type2) {
        return this.organizer.moveBeneath(type, type2);
    }

    @Override // com.androidplot.util.Layerable
    public boolean moveDown(Type type) {
        return this.organizer.moveDown(type);
    }

    @Override // com.androidplot.util.Layerable
    public boolean moveToBottom(Type type) {
        return this.organizer.moveToBottom(type);
    }

    @Override // com.androidplot.util.Layerable
    public boolean moveToTop(Type type) {
        return this.organizer.moveToTop(type);
    }

    @Override // com.androidplot.util.Layerable
    public boolean moveUp(Type type) {
        return this.organizer.moveUp(type);
    }
}
