.class final synthetic Lcom/google/android/gms/location/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/p;


# instance fields
.field private final a:Lcom/google/android/gms/location/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/av;->a:Lcom/google/android/gms/location/b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/av;->a:Lcom/google/android/gms/location/b;

    check-cast p1, Lcom/google/android/gms/internal/location/p;

    check-cast p2, Lcom/google/android/gms/tasks/i;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/location/b;->a(Lcom/google/android/gms/internal/location/p;Lcom/google/android/gms/tasks/i;)V

    return-void
.end method
