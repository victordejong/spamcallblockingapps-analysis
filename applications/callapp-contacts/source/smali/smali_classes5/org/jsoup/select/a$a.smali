.class final Lorg/jsoup/select/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/select/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lorg/jsoup/nodes/h;

.field private final b:Lorg/jsoup/select/c;

.field private final c:Lorg/jsoup/select/d;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/h;Lorg/jsoup/select/c;Lorg/jsoup/select/d;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/jsoup/select/a$a;->a:Lorg/jsoup/nodes/h;

    .line 38
    iput-object p2, p0, Lorg/jsoup/select/a$a;->b:Lorg/jsoup/select/c;

    .line 39
    iput-object p3, p0, Lorg/jsoup/select/a$a;->c:Lorg/jsoup/select/d;

    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/nodes/m;I)V
    .locals 1

    .line 43
    instance-of p2, p1, Lorg/jsoup/nodes/h;

    if-eqz p2, :cond_0

    .line 44
    check-cast p1, Lorg/jsoup/nodes/h;

    .line 45
    iget-object p2, p0, Lorg/jsoup/select/a$a;->c:Lorg/jsoup/select/d;

    iget-object v0, p0, Lorg/jsoup/select/a$a;->a:Lorg/jsoup/nodes/h;

    invoke-virtual {p2, v0, p1}, Lorg/jsoup/select/d;->a(Lorg/jsoup/nodes/h;Lorg/jsoup/nodes/h;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 46
    iget-object p2, p0, Lorg/jsoup/select/a$a;->b:Lorg/jsoup/select/c;

    invoke-virtual {p2, p1}, Lorg/jsoup/select/c;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b(Lorg/jsoup/nodes/m;I)V
    .locals 0

    return-void
.end method
