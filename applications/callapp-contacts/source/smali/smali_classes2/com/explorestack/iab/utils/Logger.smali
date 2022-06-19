.class public Lcom/explorestack/iab/utils/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/utils/Logger$LogLevel;
    }
.end annotation


# static fields
.field private static b:Lcom/explorestack/iab/utils/Logger$LogLevel;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    sget-object v0, Lcom/explorestack/iab/utils/Logger$LogLevel;->error:Lcom/explorestack/iab/utils/Logger$LogLevel;

    sput-object v0, Lcom/explorestack/iab/utils/Logger;->b:Lcom/explorestack/iab/utils/Logger$LogLevel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/explorestack/iab/utils/Logger;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/explorestack/iab/utils/Logger$LogLevel;
    .locals 1

    .line 70
    sget-object v0, Lcom/explorestack/iab/utils/Logger;->b:Lcom/explorestack/iab/utils/Logger$LogLevel;

    return-object v0
.end method

.method public static a(Lcom/explorestack/iab/utils/Logger$LogLevel;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    sget-object v1, Lcom/explorestack/iab/utils/Logger;->b:Lcom/explorestack/iab/utils/Logger$LogLevel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string v1, "Changing logging level. From: %s, To: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    sput-object p0, Lcom/explorestack/iab/utils/Logger;->b:Lcom/explorestack/iab/utils/Logger$LogLevel;

    return-void
.end method

.method public static a(Lcom/explorestack/iab/utils/Logger$LogLevel;Ljava/lang/String;)Z
    .locals 0

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/explorestack/iab/utils/Logger;->b(Lcom/explorestack/iab/utils/Logger$LogLevel;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Lcom/explorestack/iab/utils/Logger$LogLevel;)Z
    .locals 1

    .line 78
    sget-object v0, Lcom/explorestack/iab/utils/Logger;->b:Lcom/explorestack/iab/utils/Logger$LogLevel;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/explorestack/iab/utils/Logger$LogLevel;->getValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/Logger$LogLevel;->getValue()I

    move-result p0

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 41
    sget-object v0, Lcom/explorestack/iab/utils/Logger$LogLevel;->error:Lcom/explorestack/iab/utils/Logger$LogLevel;

    invoke-static {v0, p1}, Lcom/explorestack/iab/utils/Logger;->a(Lcom/explorestack/iab/utils/Logger$LogLevel;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/explorestack/iab/utils/Logger;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 23
    sget-object v0, Lcom/explorestack/iab/utils/Logger$LogLevel;->debug:Lcom/explorestack/iab/utils/Logger$LogLevel;

    invoke-static {v0, p2}, Lcom/explorestack/iab/utils/Logger;->a(Lcom/explorestack/iab/utils/Logger$LogLevel;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 53
    sget-object v0, Lcom/explorestack/iab/utils/Logger$LogLevel;->error:Lcom/explorestack/iab/utils/Logger$LogLevel;

    invoke-static {v0, p1}, Lcom/explorestack/iab/utils/Logger;->a(Lcom/explorestack/iab/utils/Logger$LogLevel;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/explorestack/iab/utils/Logger;->a:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 47
    sget-object v0, Lcom/explorestack/iab/utils/Logger$LogLevel;->error:Lcom/explorestack/iab/utils/Logger$LogLevel;

    invoke-static {v0, p2}, Lcom/explorestack/iab/utils/Logger;->a(Lcom/explorestack/iab/utils/Logger$LogLevel;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/explorestack/iab/utils/Logger;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
