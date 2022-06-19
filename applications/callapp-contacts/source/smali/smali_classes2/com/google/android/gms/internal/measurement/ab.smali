.class final Lcom/google/android/gms/internal/measurement/ab;
.super Lcom/google/android/gms/internal/measurement/ne;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/fu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ne;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ab;->a:Lcom/google/android/gms/measurement/internal/fu;

    return-void
.end method


# virtual methods
.method public final O_()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ab;->a:Lcom/google/android/gms/measurement/internal/fu;

    .line 1
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ab;->a:Lcom/google/android/gms/measurement/internal/fu;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 1
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/fu;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method
