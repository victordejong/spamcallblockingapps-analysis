.class final Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$sSecurityProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dropbox/core/android/AuthActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Ljava/security/SecureRandom;",
        "kotlin.jvm.PlatformType",
        "getSecureRandom"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$sSecurityProvider$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$sSecurityProvider$1;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$sSecurityProvider$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$sSecurityProvider$1;->a:Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$sSecurityProvider$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .line 35
    invoke-static {}, Lcom/dropbox/core/android/b;->a()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method
