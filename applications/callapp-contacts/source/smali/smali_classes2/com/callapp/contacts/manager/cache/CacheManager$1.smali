.class Lcom/callapp/contacts/manager/cache/CacheManager$1;
.super Landroidx/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/cache/CacheManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/b/e<",
        "Ljava/lang/String;",
        "Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/cache/CacheManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/cache/CacheManager;I)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/callapp/contacts/manager/cache/CacheManager$1;->a:Lcom/callapp/contacts/manager/cache/CacheManager;

    invoke-direct {p0, p2}, Landroidx/b/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 121
    check-cast p2, Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;

    .line 1124
    invoke-virtual {p2}, Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;->getSize()J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method
