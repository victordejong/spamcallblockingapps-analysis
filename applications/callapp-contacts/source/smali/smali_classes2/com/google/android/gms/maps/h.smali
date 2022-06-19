.class public final Lcom/google/android/gms/maps/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/maps/a/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/a/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/a/e;

    iput-object p1, p0, Lcom/google/android/gms/maps/h;->a:Lcom/google/android/gms/maps/a/e;

    return-void
.end method
