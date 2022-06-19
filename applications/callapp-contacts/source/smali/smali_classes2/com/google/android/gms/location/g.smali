.class public final synthetic Lcom/google/android/gms/location/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/p;


# instance fields
.field private final a:Lcom/google/android/gms/location/b;

.field private final b:Lcom/google/android/gms/location/m;

.field private final c:Lcom/google/android/gms/location/d;

.field private final d:Lcom/google/android/gms/location/k;

.field private final e:Lcom/google/android/gms/internal/location/zzba;

.field private final f:Lcom/google/android/gms/common/api/internal/i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/b;Lcom/google/android/gms/location/m;Lcom/google/android/gms/location/d;Lcom/google/android/gms/location/k;Lcom/google/android/gms/internal/location/zzba;Lcom/google/android/gms/common/api/internal/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/g;->a:Lcom/google/android/gms/location/b;

    iput-object p2, p0, Lcom/google/android/gms/location/g;->b:Lcom/google/android/gms/location/m;

    iput-object p3, p0, Lcom/google/android/gms/location/g;->c:Lcom/google/android/gms/location/d;

    iput-object p4, p0, Lcom/google/android/gms/location/g;->d:Lcom/google/android/gms/location/k;

    iput-object p5, p0, Lcom/google/android/gms/location/g;->e:Lcom/google/android/gms/internal/location/zzba;

    iput-object p6, p0, Lcom/google/android/gms/location/g;->f:Lcom/google/android/gms/common/api/internal/i;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/location/g;->a:Lcom/google/android/gms/location/b;

    iget-object v1, p0, Lcom/google/android/gms/location/g;->b:Lcom/google/android/gms/location/m;

    iget-object v2, p0, Lcom/google/android/gms/location/g;->c:Lcom/google/android/gms/location/d;

    iget-object v3, p0, Lcom/google/android/gms/location/g;->d:Lcom/google/android/gms/location/k;

    iget-object v4, p0, Lcom/google/android/gms/location/g;->e:Lcom/google/android/gms/internal/location/zzba;

    iget-object v5, p0, Lcom/google/android/gms/location/g;->f:Lcom/google/android/gms/common/api/internal/i;

    move-object v6, p1

    check-cast v6, Lcom/google/android/gms/internal/location/p;

    move-object v7, p2

    check-cast v7, Lcom/google/android/gms/tasks/i;

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/location/b;->a(Lcom/google/android/gms/location/m;Lcom/google/android/gms/location/d;Lcom/google/android/gms/location/k;Lcom/google/android/gms/internal/location/zzba;Lcom/google/android/gms/common/api/internal/i;Lcom/google/android/gms/internal/location/p;Lcom/google/android/gms/tasks/i;)V

    return-void
.end method
