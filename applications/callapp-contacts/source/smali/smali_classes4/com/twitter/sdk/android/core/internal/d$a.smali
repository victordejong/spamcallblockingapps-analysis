.class public final Lcom/twitter/sdk/android/core/internal/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:J

.field private final c:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTC"

    .line 110
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/d$a;->c:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(J)Z
    .locals 9

    monitor-enter p0

    .line 114
    :try_start_0
    iget-wide v0, p0, Lcom/twitter/sdk/android/core/internal/d$a;->b:J

    sub-long v2, p1, v0

    const-wide/32 v4, 0x1499700

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v8, v2, v4

    if-lez v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1130
    :goto_0
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/d$a;->c:Ljava/util/Calendar;

    invoke-virtual {v3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1131
    iget-object p1, p0, Lcom/twitter/sdk/android/core/internal/d$a;->c:Ljava/util/Calendar;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 1132
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/d$a;->c:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1134
    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/d$a;->c:Ljava/util/Calendar;

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1135
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/d$a;->c:Ljava/util/Calendar;

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 1136
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/d$a;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne p1, p2, :cond_1

    if-ne v3, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 118
    :goto_2
    iget-boolean p2, p0, Lcom/twitter/sdk/android/core/internal/d$a;->a:Z

    if-nez p2, :cond_4

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    .line 119
    :cond_3
    iput-boolean v7, p0, Lcom/twitter/sdk/android/core/internal/d$a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v7

    .line 121
    :cond_4
    monitor-exit p0

    return v6

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(J)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 125
    :try_start_0
    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/internal/d$a;->a:Z

    .line 126
    iput-wide p1, p0, Lcom/twitter/sdk/android/core/internal/d$a;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
