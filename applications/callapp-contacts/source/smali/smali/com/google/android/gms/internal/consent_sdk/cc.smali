.class public final Lcom/google/android/gms/internal/consent_sdk/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/c/c;


# instance fields
.field private final a:Lcom/google/android/gms/internal/consent_sdk/m;

.field private final b:Lcom/google/android/gms/internal/consent_sdk/ch;

.field private final c:Lcom/google/android/gms/internal/consent_sdk/aa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/m;Lcom/google/android/gms/internal/consent_sdk/ch;Lcom/google/android/gms/internal/consent_sdk/aa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/cc;->a:Lcom/google/android/gms/internal/consent_sdk/m;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/cc;->b:Lcom/google/android/gms/internal/consent_sdk/ch;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/cc;->c:Lcom/google/android/gms/internal/consent_sdk/aa;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/cc;->a:Lcom/google/android/gms/internal/consent_sdk/m;

    .line 2008
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/m;->a:Landroid/content/SharedPreferences;

    const-string v1, "consent_status"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/app/Activity;Lcom/google/android/c/d;Lcom/google/android/c/c$b;Lcom/google/android/c/c$a;)V
    .locals 8

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/cc;->b:Lcom/google/android/gms/internal/consent_sdk/ch;

    .line 1012
    iget-object v6, v1, Lcom/google/android/gms/internal/consent_sdk/ch;->c:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/google/android/gms/internal/consent_sdk/ck;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/consent_sdk/ck;-><init>(Lcom/google/android/gms/internal/consent_sdk/ch;Landroid/app/Activity;Lcom/google/android/c/d;Lcom/google/android/c/c$b;Lcom/google/android/c/c$a;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
