.class final Lcom/dropbox/core/android/AuthActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dropbox/core/android/AuthActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/android/AuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .line 172
    invoke-static {}, Lcom/dropbox/core/android/b;->a()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method
