.class public Lcom/amazonaws/logging/AndroidLog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazonaws/logging/Log;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/amazonaws/logging/LogFactory$Level;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->b:Lcom/amazonaws/logging/LogFactory$Level;

    .line 38
    iput-object p1, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    return-void
.end method

.method private e()Lcom/amazonaws/logging/LogFactory$Level;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->b:Lcom/amazonaws/logging/LogFactory$Level;

    if-eqz v0, :cond_0

    return-object v0

    .line 154
    :cond_0
    invoke-static {}, Lcom/amazonaws/logging/LogFactory;->a()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    sget-object p1, Lcom/amazonaws/logging/LogFactory$Level;->TRACE:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {p1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    sget-object p1, Lcom/amazonaws/logging/LogFactory$Level;->DEBUG:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {p1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->DEBUG:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    sget-object p1, Lcom/amazonaws/logging/LogFactory$Level;->DEBUG:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {p1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .line 122
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->WARN:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->ERROR:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    sget-object p1, Lcom/amazonaws/logging/LogFactory$Level;->INFO:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {p1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .line 136
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->ERROR:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->INFO:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 2

    .line 115
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->WARN:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final d()Z
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->TRACE:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 2

    .line 129
    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->e()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->ERROR:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
