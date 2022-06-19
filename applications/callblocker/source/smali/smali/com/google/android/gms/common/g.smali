.class public final Lcom/google/android/gms/common/g;
.super Lcom/google/android/gms/common/h;
.source "com.google.android.gms:play-services-base@@17.1.0"


# static fields
.field public static final a:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/google/android/gms/common/h;->b:I

    sput v0, Lcom/google/android/gms/common/g;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 43
    invoke-static {p0}, Lcom/google/android/gms/common/h;->c(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method
