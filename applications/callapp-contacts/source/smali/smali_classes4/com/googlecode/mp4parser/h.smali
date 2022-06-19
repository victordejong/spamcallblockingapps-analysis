.class public final Lcom/googlecode/mp4parser/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/googlecode/mp4parser/h;

.field private static b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/googlecode/mp4parser/h;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sput-object v0, Lcom/googlecode/mp4parser/h;->b:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/googlecode/mp4parser/h;
    .locals 3

    .line 1
    sget-object v0, Lcom/googlecode/mp4parser/h;->a:Lcom/googlecode/mp4parser/h;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/mp4parser/aspectj/lang/NoAspectBoundException;

    sget-object v1, Lcom/googlecode/mp4parser/h;->b:Ljava/lang/Throwable;

    const-string v2, "com.googlecode.mp4parser.RequiresParseDetailAspect"

    invoke-direct {v0, v2, v1}, Lorg/mp4parser/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Lorg/mp4parser/aspectj/lang/a;)V
    .locals 2

    .line 51
    invoke-interface {p0}, Lorg/mp4parser/aspectj/lang/a;->a()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/googlecode/mp4parser/a;

    if-eqz v0, :cond_1

    .line 52
    invoke-interface {p0}, Lorg/mp4parser/aspectj/lang/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/a;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/a;->isParsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-interface {p0}, Lorg/mp4parser/aspectj/lang/a;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/googlecode/mp4parser/a;

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/a;->parseDetails()V

    :cond_0
    return-void

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Only methods in subclasses of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/googlecode/mp4parser/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can  be annotated with ParseDetail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b()V
    .locals 1

    .line 1
    new-instance v0, Lcom/googlecode/mp4parser/h;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/h;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/h;->a:Lcom/googlecode/mp4parser/h;

    return-void
.end method
