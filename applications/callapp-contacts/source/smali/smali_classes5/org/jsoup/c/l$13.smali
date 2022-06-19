.class final enum Lorg/jsoup/c/l$13;
.super Lorg/jsoup/c/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 315
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 1

    const/16 v0, 0x2d

    .line 317
    invoke-virtual {p2, v0}, Lorg/jsoup/c/a;->b(C)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 318
    invoke-virtual {p1, v0}, Lorg/jsoup/c/k;->a(C)V

    .line 319
    sget-object p2, Lorg/jsoup/c/l$13;->ScriptDataEscapeStartDash:Lorg/jsoup/c/l;

    invoke-virtual {p1, p2}, Lorg/jsoup/c/k;->a(Lorg/jsoup/c/l;)V

    return-void

    .line 321
    :cond_0
    sget-object p2, Lorg/jsoup/c/l$13;->ScriptData:Lorg/jsoup/c/l;

    .line 1124
    iput-object p2, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void
.end method
