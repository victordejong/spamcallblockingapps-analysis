package androidx.constraintlayout.solver.widgets;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/Rectangle.class */
public class Rectangle {
    public int height;
    public int width;

    /* renamed from: x */
    public int f51x;

    /* renamed from: y */
    public int f52y;

    public boolean contains(int i, int i2) {
        int i3;
        int i4 = this.f51x;
        return i >= i4 && i < i4 + this.width && i2 >= (i3 = this.f52y) && i2 < i3 + this.height;
    }

    public int getCenterX() {
        return (this.f51x + this.width) / 2;
    }

    public int getCenterY() {
        return (this.f52y + this.height) / 2;
    }

    public void grow(int i, int i2) {
        this.f51x -= i;
        this.f52y -= i2;
        this.width += i * 2;
        this.height += i2 * 2;
    }

    public boolean intersects(Rectangle rectangle) {
        int i;
        int i2;
        int i3 = this.f51x;
        int i4 = rectangle.f51x;
        return i3 >= i4 && i3 < i4 + rectangle.width && (i = this.f52y) >= (i2 = rectangle.f52y) && i < i2 + rectangle.height;
    }

    public void setBounds(int i, int i2, int i3, int i4) {
        this.f51x = i;
        this.f52y = i2;
        this.width = i3;
        this.height = i4;
    }
}
