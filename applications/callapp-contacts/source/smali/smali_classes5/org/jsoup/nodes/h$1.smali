.class final Lorg/jsoup/nodes/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/select/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jsoup/nodes/h;->r()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Lorg/jsoup/nodes/h;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/h;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1140
    iput-object p1, p0, Lorg/jsoup/nodes/h$1;->b:Lorg/jsoup/nodes/h;

    iput-object p2, p0, Lorg/jsoup/nodes/h$1;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/nodes/m;I)V
    .locals 0

    .line 1142
    instance-of p2, p1, Lorg/jsoup/nodes/p;

    if-eqz p2, :cond_0

    .line 1143
    check-cast p1, Lorg/jsoup/nodes/p;

    .line 1144
    iget-object p2, p0, Lorg/jsoup/nodes/h$1;->a:Ljava/lang/StringBuilder;

    invoke-static {p2, p1}, Lorg/jsoup/nodes/h;->a(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/p;)V

    return-void

    .line 1145
    :cond_0
    instance-of p2, p1, Lorg/jsoup/nodes/h;

    if-eqz p2, :cond_2

    .line 1146
    check-cast p1, Lorg/jsoup/nodes/h;

    .line 1147
    iget-object p2, p0, Lorg/jsoup/nodes/h$1;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 1184
    iget-object p2, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 2100
    iget-boolean p2, p2, Lorg/jsoup/c/h;->c:Z

    if-nez p2, :cond_1

    .line 1148
    invoke-static {p1}, Lorg/jsoup/nodes/h;->a(Lorg/jsoup/nodes/h;)Lorg/jsoup/c/h;

    move-result-object p1

    .line 3038
    iget-object p1, p1, Lorg/jsoup/c/h;->a:Ljava/lang/String;

    const-string p2, "br"

    .line 1148
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lorg/jsoup/nodes/h$1;->a:Ljava/lang/StringBuilder;

    .line 1149
    invoke-static {p1}, Lorg/jsoup/nodes/p;->a(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1150
    iget-object p1, p0, Lorg/jsoup/nodes/h$1;->a:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public final b(Lorg/jsoup/nodes/m;I)V
    .locals 0

    .line 1156
    instance-of p2, p1, Lorg/jsoup/nodes/h;

    if-eqz p2, :cond_0

    .line 1157
    move-object p2, p1

    check-cast p2, Lorg/jsoup/nodes/h;

    .line 3184
    iget-object p2, p2, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 4100
    iget-boolean p2, p2, Lorg/jsoup/c/h;->c:Z

    if-eqz p2, :cond_0

    .line 1158
    invoke-virtual {p1}, Lorg/jsoup/nodes/m;->A()Lorg/jsoup/nodes/m;

    move-result-object p1

    instance-of p1, p1, Lorg/jsoup/nodes/p;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/jsoup/nodes/h$1;->a:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/jsoup/nodes/p;->a(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1159
    iget-object p1, p0, Lorg/jsoup/nodes/h$1;->a:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method
