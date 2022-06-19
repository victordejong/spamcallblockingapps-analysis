.class public final Lorg/mistergroup/shouldianswer/ui/main/c/j$b;
.super Ljava/lang/Object;
.source "LogsDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lorg/mistergroup/shouldianswer/ui/main/c/b;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/ui/main/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private final e:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;


# direct methods
.method public constructor <init>(JLorg/mistergroup/shouldianswer/ui/main/c/j$a;)V
    .locals 1

    const-string v0, "filterType"

    invoke-static {p3, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->d:J

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->e:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    .line 42
    sget-object p1, Lorg/mistergroup/shouldianswer/ui/main/c/h;->b:Lorg/mistergroup/shouldianswer/ui/main/c/h$a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/h$a;->a()Ljava/text/SimpleDateFormat;

    move-result-object p1

    iget-wide p2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->d:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "LogsAdapter.compareDateFormat.format(date)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->b:Ljava/lang/String;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c:Ljava/util/List;

    .line 46
    sget-object p1, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/MyApp;->a()Ljava/text/DateFormat;

    move-result-object p1

    iget-wide p2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->d:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 47
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->e:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    sget-object p3, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    if-eq p2, p3, :cond_0

    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->e:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    sget-object p3, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->a:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    if-eq p2, p3, :cond_0

    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->f:Lorg/mistergroup/shouldianswer/ui/main/c/j$a$a;

    sget-object p3, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {p3}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->e:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    invoke-virtual {p1, p3, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j$a$a;->a(Landroid/content/Context;Lorg/mistergroup/shouldianswer/ui/main/c/j$a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    :cond_0
    new-instance p2, Lorg/mistergroup/shouldianswer/ui/main/c/b;

    const-string p3, "caption"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lorg/mistergroup/shouldianswer/ui/main/c/b;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->a:Lorg/mistergroup/shouldianswer/ui/main/c/b;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lorg/mistergroup/shouldianswer/ui/main/c/b;
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->a:Lorg/mistergroup/shouldianswer/ui/main/c/b;

    if-nez v0, :cond_0

    const-string v1, "headerItem"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/ui/main/c/c;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c:Ljava/util/List;

    return-object v0
.end method

.method public final d()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->d:J

    return-wide v0
.end method
