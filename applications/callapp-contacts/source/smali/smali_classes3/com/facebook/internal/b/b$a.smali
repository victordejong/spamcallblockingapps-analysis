.class public final Lcom/facebook/internal/b/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Lcom/facebook/internal/b/b;
    .locals 2

    .line 244
    new-instance v0, Lcom/facebook/internal/b/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/internal/b/b;-><init>(Ljava/io/File;Lcom/facebook/internal/b/b$1;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;Lcom/facebook/internal/b/b$b;)Lcom/facebook/internal/b/b;
    .locals 2

    .line 248
    new-instance v0, Lcom/facebook/internal/b/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/internal/b/b;-><init>(Ljava/lang/Throwable;Lcom/facebook/internal/b/b$b;Lcom/facebook/internal/b/b$1;)V

    return-object v0
.end method

.method public static a(Lorg/json/JSONArray;)Lcom/facebook/internal/b/b;
    .locals 2

    .line 252
    new-instance v0, Lcom/facebook/internal/b/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/internal/b/b;-><init>(Lorg/json/JSONArray;Lcom/facebook/internal/b/b$1;)V

    return-object v0
.end method
