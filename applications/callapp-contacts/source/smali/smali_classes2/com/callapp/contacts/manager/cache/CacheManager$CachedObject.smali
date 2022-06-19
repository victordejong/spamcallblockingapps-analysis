.class public final Lcom/callapp/contacts/manager/cache/CacheManager$CachedObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/cache/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CachedObject"
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

.field private final b:Ljava/util/Date;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/callapp/contacts/manager/cache/CacheManager$CachedObject;->a:Ljava/lang/Object;

    .line 108
    iput-object p2, p0, Lcom/callapp/contacts/manager/cache/CacheManager$CachedObject;->b:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final getExpirationDate()Ljava/util/Date;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/callapp/contacts/manager/cache/CacheManager$CachedObject;->b:Ljava/util/Date;

    return-object v0
.end method

.method public final getObj()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/callapp/contacts/manager/cache/CacheManager$CachedObject;->a:Ljava/lang/Object;

    return-object v0
.end method
