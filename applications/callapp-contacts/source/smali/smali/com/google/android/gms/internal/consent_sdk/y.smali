.class public final Lcom/google/android/gms/internal/consent_sdk/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/c/f$a;
.implements Lcom/google/android/c/f$b;


# instance fields
.field private final a:Lcom/google/android/c/f$b;

.field private final b:Lcom/google/android/c/f$a;


# direct methods
.method private constructor <init>(Lcom/google/android/c/f$b;Lcom/google/android/c/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/y;->a:Lcom/google/android/c/f$b;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/y;->b:Lcom/google/android/c/f$a;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/c/f$b;Lcom/google/android/c/f$a;Lcom/google/android/gms/internal/consent_sdk/w;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/y;-><init>(Lcom/google/android/c/f$b;Lcom/google/android/c/f$a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/c/b;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/y;->a:Lcom/google/android/c/f$b;

    invoke-interface {v0, p1}, Lcom/google/android/c/f$b;->a(Lcom/google/android/c/b;)V

    return-void
.end method

.method public final a(Lcom/google/android/c/e;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/y;->b:Lcom/google/android/c/f$a;

    invoke-interface {v0, p1}, Lcom/google/android/c/f$a;->a(Lcom/google/android/c/e;)V

    return-void
.end method
