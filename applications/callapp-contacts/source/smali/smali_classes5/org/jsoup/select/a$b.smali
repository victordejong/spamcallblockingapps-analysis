.class public final Lorg/jsoup/select/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/select/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lorg/jsoup/nodes/h;

.field private final b:Lorg/jsoup/nodes/h;

.field private final c:Lorg/jsoup/select/d;


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/h;Lorg/jsoup/select/d;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lorg/jsoup/select/a$b;->a:Lorg/jsoup/nodes/h;

    .line 67
    iput-object p1, p0, Lorg/jsoup/select/a$b;->b:Lorg/jsoup/nodes/h;

    .line 68
    iput-object p2, p0, Lorg/jsoup/select/a$b;->c:Lorg/jsoup/select/d;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 85
    sget v0, Lorg/jsoup/select/e$a;->a:I

    return v0
.end method

.method public final a(Lorg/jsoup/nodes/m;)I
    .locals 2

    .line 73
    instance-of v0, p1, Lorg/jsoup/nodes/h;

    if-eqz v0, :cond_0

    .line 74
    check-cast p1, Lorg/jsoup/nodes/h;

    .line 75
    iget-object v0, p0, Lorg/jsoup/select/a$b;->c:Lorg/jsoup/select/d;

    iget-object v1, p0, Lorg/jsoup/select/a$b;->b:Lorg/jsoup/nodes/h;

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/select/d;->a(Lorg/jsoup/nodes/h;Lorg/jsoup/nodes/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iput-object p1, p0, Lorg/jsoup/select/a$b;->a:Lorg/jsoup/nodes/h;

    .line 77
    sget p1, Lorg/jsoup/select/e$a;->e:I

    return p1

    .line 80
    :cond_0
    sget p1, Lorg/jsoup/select/e$a;->a:I

    return p1
.end method
