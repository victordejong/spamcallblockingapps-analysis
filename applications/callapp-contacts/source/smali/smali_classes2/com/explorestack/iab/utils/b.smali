.class public final Lcom/explorestack/iab/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/explorestack/iab/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lcom/explorestack/iab/utils/Logger;

    const-string v1, "CommonLog"

    invoke-direct {v0, v1}, Lcom/explorestack/iab/utils/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/explorestack/iab/utils/b;->a:Lcom/explorestack/iab/utils/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 12
    sget-object v0, Lcom/explorestack/iab/utils/b;->a:Lcom/explorestack/iab/utils/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/explorestack/iab/utils/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 24
    sget-object v0, Lcom/explorestack/iab/utils/b;->a:Lcom/explorestack/iab/utils/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/explorestack/iab/utils/Logger;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 20
    sget-object v0, Lcom/explorestack/iab/utils/b;->a:Lcom/explorestack/iab/utils/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/explorestack/iab/utils/Logger;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
