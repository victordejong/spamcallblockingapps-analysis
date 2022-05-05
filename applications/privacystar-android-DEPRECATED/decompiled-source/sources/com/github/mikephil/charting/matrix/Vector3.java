package com.github.mikephil.charting.matrix;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/matrix/Vector3.class */
public final class Vector3 {

    /* renamed from: x */
    public float f150x;

    /* renamed from: y */
    public float f151y;

    /* renamed from: z */
    public float f152z;
    public static final Vector3 ZERO = new Vector3(0.0f, 0.0f, 0.0f);
    public static final Vector3 UNIT_X = new Vector3(1.0f, 0.0f, 0.0f);
    public static final Vector3 UNIT_Y = new Vector3(0.0f, 1.0f, 0.0f);
    public static final Vector3 UNIT_Z = new Vector3(0.0f, 0.0f, 1.0f);

    public Vector3() {
    }

    public Vector3(float f, float f2, float f3) {
        set(f, f2, f3);
    }

    public Vector3(Vector3 vector3) {
        set(vector3);
    }

    public Vector3(float[] fArr) {
        set(fArr[0], fArr[1], fArr[2]);
    }

    public final void add(float f, float f2, float f3) {
        this.f150x += f;
        this.f151y += f2;
        this.f152z += f3;
    }

    public final void add(Vector3 vector3) {
        this.f150x += vector3.f150x;
        this.f151y += vector3.f151y;
        this.f152z += vector3.f152z;
    }

    public final Vector3 cross(Vector3 vector3) {
        return new Vector3((this.f151y * vector3.f152z) - (this.f152z * vector3.f151y), (this.f152z * vector3.f150x) - (this.f150x * vector3.f152z), (this.f150x * vector3.f151y) - (this.f151y * vector3.f150x));
    }

    public final float distance2(Vector3 vector3) {
        float f = this.f150x - vector3.f150x;
        float f2 = this.f151y - vector3.f151y;
        float f3 = this.f152z - vector3.f152z;
        return (f * f) + (f2 * f2) + (f3 * f3);
    }

    public final void divide(float f) {
        if (f != 0.0f) {
            this.f150x /= f;
            this.f151y /= f;
            this.f152z /= f;
        }
    }

    public final float dot(Vector3 vector3) {
        return (this.f150x * vector3.f150x) + (this.f151y * vector3.f151y) + (this.f152z * vector3.f152z);
    }

    public final float length() {
        return (float) Math.sqrt(length2());
    }

    public final float length2() {
        return (this.f150x * this.f150x) + (this.f151y * this.f151y) + (this.f152z * this.f152z);
    }

    public final void multiply(float f) {
        this.f150x *= f;
        this.f151y *= f;
        this.f152z *= f;
    }

    public final void multiply(Vector3 vector3) {
        this.f150x *= vector3.f150x;
        this.f151y *= vector3.f151y;
        this.f152z *= vector3.f152z;
    }

    public final float normalize() {
        float length = length();
        if (length != 0.0f) {
            this.f150x /= length;
            this.f151y /= length;
            this.f152z /= length;
        }
        return length;
    }

    public final boolean pointsInSameDirection(Vector3 vector3) {
        return dot(vector3) > 0.0f;
    }

    public final void set(float f, float f2, float f3) {
        this.f150x = f;
        this.f151y = f2;
        this.f152z = f3;
    }

    public final void set(Vector3 vector3) {
        this.f150x = vector3.f150x;
        this.f151y = vector3.f151y;
        this.f152z = vector3.f152z;
    }

    public final void subtract(Vector3 vector3) {
        this.f150x -= vector3.f150x;
        this.f151y -= vector3.f151y;
        this.f152z -= vector3.f152z;
    }

    public final void subtractMultiple(Vector3 vector3, float f) {
        this.f150x -= vector3.f150x * f;
        this.f151y -= vector3.f151y * f;
        this.f152z -= vector3.f152z * f;
    }

    public final void zero() {
        set(0.0f, 0.0f, 0.0f);
    }
}
