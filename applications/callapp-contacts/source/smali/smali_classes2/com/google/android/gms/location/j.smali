.class final Lcom/google/android/gms/location/j;
.super Lcom/google/android/gms/location/l;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/location/k;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/i;Lcom/google/android/gms/location/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/i<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/google/android/gms/location/k;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/location/l;-><init>(Lcom/google/android/gms/tasks/i;)V

    iput-object p2, p0, Lcom/google/android/gms/location/j;->a:Lcom/google/android/gms/location/k;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/j;->a:Lcom/google/android/gms/location/k;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/location/k;->a()V

    return-void
.end method
