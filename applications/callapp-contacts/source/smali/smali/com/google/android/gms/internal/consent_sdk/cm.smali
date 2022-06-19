.class final synthetic Lcom/google/android/gms/internal/consent_sdk/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/c/c$b;


# direct methods
.method constructor <init>(Lcom/google/android/c/c$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/cm;->a:Lcom/google/android/c/c$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/cm;->a:Lcom/google/android/c/c$b;

    invoke-interface {v0}, Lcom/google/android/c/c$b;->a()V

    return-void
.end method
