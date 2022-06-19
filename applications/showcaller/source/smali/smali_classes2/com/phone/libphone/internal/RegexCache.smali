.class public Lcom/phone/libphone/internal/RegexCache;
.super Ljava/lang/Object;
.source "RegexCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phone/libphone/internal/RegexCache$LRUCache;
    }
.end annotation


# instance fields
.field private a:Lcom/phone/libphone/internal/RegexCache$LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/phone/libphone/internal/RegexCache$LRUCache<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/phone/libphone/internal/RegexCache$LRUCache;

    invoke-direct {v0, p1}, Lcom/phone/libphone/internal/RegexCache$LRUCache;-><init>(I)V

    iput-object v0, p0, Lcom/phone/libphone/internal/RegexCache;->a:Lcom/phone/libphone/internal/RegexCache$LRUCache;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/phone/libphone/internal/RegexCache;->a:Lcom/phone/libphone/internal/RegexCache$LRUCache;

    invoke-virtual {v0, p1}, Lcom/phone/libphone/internal/RegexCache$LRUCache;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/phone/libphone/internal/RegexCache;->a:Lcom/phone/libphone/internal/RegexCache$LRUCache;

    invoke-virtual {v1, p1, v0}, Lcom/phone/libphone/internal/RegexCache$LRUCache;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method
