.class final Lorg/jsoup/c/i$d;
.super Lorg/jsoup/c/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field final b:Ljava/lang/StringBuilder;

.field c:Ljava/lang/String;

.field final d:Ljava/lang/StringBuilder;

.field final e:Ljava/lang/StringBuilder;

.field f:Z


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lorg/jsoup/c/i;-><init>(Lorg/jsoup/c/i$1;)V

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lorg/jsoup/c/i$d;->b:Ljava/lang/StringBuilder;

    .line 35
    iput-object v0, p0, Lorg/jsoup/c/i$d;->c:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/c/i$d;->d:Ljava/lang/StringBuilder;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/c/i$d;->e:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lorg/jsoup/c/i$d;->f:Z

    .line 41
    sget-object v0, Lorg/jsoup/c/i$i;->Doctype:Lorg/jsoup/c/i$i;

    iput-object v0, p0, Lorg/jsoup/c/i$d;->a:Lorg/jsoup/c/i$i;

    return-void
.end method


# virtual methods
.method final a()Lorg/jsoup/c/i;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/jsoup/c/i$d;->b:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/c/i$d;->a(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lorg/jsoup/c/i$d;->c:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lorg/jsoup/c/i$d;->d:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/c/i$d;->a(Ljava/lang/StringBuilder;)V

    .line 49
    iget-object v0, p0, Lorg/jsoup/c/i$d;->e:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/c/i$d;->a(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lorg/jsoup/c/i$d;->f:Z

    return-object p0
.end method
