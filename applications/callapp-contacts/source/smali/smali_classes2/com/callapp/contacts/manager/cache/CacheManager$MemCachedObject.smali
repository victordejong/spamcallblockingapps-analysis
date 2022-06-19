.class Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/cache/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MemCachedObject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Date;

.field private final c:J


# direct methods
.method constructor <init>(Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;->a:Ljava/lang/Object;

    .line 82
    iput-wide p2, p0, Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;->c:J

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/util/Date;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Date;",
            "J)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;->a:Ljava/lang/Object;

    .line 76
    iput-object p2, p0, Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;->b:Ljava/util/Date;

    .line 77
    iput-wide p3, p0, Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;->c:J

    return-void
.end method


# virtual methods
.method getExpirationDate()Ljava/util/Date;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;->b:Ljava/util/Date;

    return-object v0
.end method

.method public getObj()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;->c:J

    return-wide v0
.end method
