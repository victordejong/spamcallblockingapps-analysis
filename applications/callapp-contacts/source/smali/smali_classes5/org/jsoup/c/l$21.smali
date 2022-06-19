.class final enum Lorg/jsoup/c/l$21;
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

    .line 455
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/l;-><init>(Ljava/lang/String;ILorg/jsoup/c/l$1;)V

    return-void
.end method


# virtual methods
.method final read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V
    .locals 2

    .line 457
    sget-object v0, Lorg/jsoup/c/l$21;->ScriptDataDoubleEscaped:Lorg/jsoup/c/l;

    sget-object v1, Lorg/jsoup/c/l$21;->ScriptDataEscaped:Lorg/jsoup/c/l;

    invoke-static {p1, p2, v0, v1}, Lorg/jsoup/c/l;->access$600(Lorg/jsoup/c/k;Lorg/jsoup/c/a;Lorg/jsoup/c/l;Lorg/jsoup/c/l;)V

    return-void
.end method
