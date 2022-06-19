.class public Ldi0;
.super Lorg/xml/sax/ext/DefaultHandler2;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldi0$d;,
        Ldi0$b;,
        Ldi0$c;
    }
.end annotation


# static fields
.field public static j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lzh0$p;",
            ">;"
        }
    .end annotation
.end field

.field public static l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lyh0$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lzh0;

.field public b:Lzh0$j0;

.field public c:Z

.field public d:I

.field public e:Z

.field public f:Ldi0$c;

.field public g:Ljava/lang/StringBuilder;

.field public h:Z

.field public i:Ljava/lang/StringBuilder;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/xml/sax/ext/DefaultHandler2;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldi0;->a:Lzh0;

    iput-object v0, p0, Ldi0;->b:Lzh0$j0;

    const/4 v1, 0x0

    iput-boolean v1, p0, Ldi0;->c:Z

    iput-boolean v1, p0, Ldi0;->e:Z

    iput-object v0, p0, Ldi0;->f:Ldi0$c;

    iput-object v0, p0, Ldi0;->g:Ljava/lang/StringBuilder;

    iput-boolean v1, p0, Ldi0;->h:Z

    iput-object v0, p0, Ldi0;->i:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static A0(Ljava/lang/String;)Lzh0$b;
    .locals 5

    new-instance v0, Ldi0$d;

    invoke-direct {v0, p0}, Ldi0$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ldi0$d;->x()V

    invoke-virtual {v0}, Ldi0$d;->m()Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0}, Ldi0$d;->w()Z

    invoke-virtual {v0}, Ldi0$d;->m()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0}, Ldi0$d;->w()Z

    invoke-virtual {v0}, Ldi0$d;->m()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0}, Ldi0$d;->w()Z

    invoke-virtual {v0}, Ldi0$d;->m()Ljava/lang/Float;

    move-result-object v0

    if-eqz p0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    new-instance v3, Lzh0$b;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {v3, p0, v1, v2, v0}, Lzh0$b;-><init>(FFFF)V

    return-object v3

    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid viewBox. height cannot be negative"

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid viewBox. width cannot be negative"

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid viewBox definition - should have four numbers"

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static F0(Lzh0$e0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "inherit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Ldi0$a;->b:[I

    invoke-static {p1}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x1

    const-string v2, "none"

    const-string v3, "currentColor"

    const/16 v4, 0x7c

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-static {p2}, Ldi0;->z0(Ljava/lang/String;)Lzh0$e0$h;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->N:Lzh0$e0$h;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide v0, 0x800000000L

    goto/16 :goto_4

    :pswitch_1
    invoke-static {p2}, Ldi0;->j0(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->M:Ljava/lang/Float;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide v0, 0x400000000L

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lzh0$g;->b()Lzh0$g;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p2}, Ldi0;->S(Ljava/lang/String;)Lzh0$f;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lzh0$e0;->L:Lzh0$o0;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide v0, 0x200000000L

    goto/16 :goto_4

    :pswitch_3
    invoke-static {p2}, Ldi0;->j0(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lzh0$e0;->K:F

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide v0, 0x100000000L

    goto/16 :goto_4

    :pswitch_4
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lzh0$g;->b()Lzh0$g;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-static {p2}, Ldi0;->S(Ljava/lang/String;)Lzh0$f;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lzh0$e0;->J:Lzh0$o0;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide v0, 0x80000000L

    goto/16 :goto_4

    :pswitch_5
    invoke-static {p2, p1}, Ldi0;->e0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->I:Ljava/lang/String;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/32 v0, 0x40000000

    goto/16 :goto_4

    :pswitch_6
    invoke-static {p2}, Ldi0;->W(Ljava/lang/String;)Lzh0$e0$a;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->H:Lzh0$e0$a;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/32 v0, 0x20000000

    goto/16 :goto_4

    :pswitch_7
    invoke-static {p2, p1}, Ldi0;->e0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->G:Ljava/lang/String;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/32 v0, 0x10000000

    goto/16 :goto_4

    :pswitch_8
    invoke-static {p2}, Ldi0;->R(Ljava/lang/String;)Lzh0$c;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->y:Lzh0$c;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/32 v0, 0x100000

    goto/16 :goto_4

    :pswitch_9
    invoke-static {p2}, Ldi0;->j0(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lzh0$e0;->F:F

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/32 v0, 0x8000000

    goto/16 :goto_4

    :pswitch_a
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lzh0$g;->b()Lzh0$g;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-static {p2}, Ldi0;->S(Ljava/lang/String;)Lzh0$f;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lzh0$e0;->E:Lzh0$o0;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/32 v0, 0x4000000

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "|visible|hidden|collapse|"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_5

    const-string p1, "visible"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->D:Ljava/lang/Boolean;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/32 v0, 0x2000000

    goto/16 :goto_4

    :cond_5
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid value for \"visibility\" attribute: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_c
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_6

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->C:Ljava/lang/Boolean;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/32 v0, 0x1000000

    goto/16 :goto_4

    :cond_6
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid value for \"display\" attribute: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_d
    invoke-static {p2, p1}, Ldi0;->e0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->B:Ljava/lang/String;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/32 v0, 0x800000

    goto/16 :goto_4

    :pswitch_e
    invoke-static {p2, p1}, Ldi0;->e0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->A:Ljava/lang/String;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/32 v0, 0x400000

    goto/16 :goto_4

    :pswitch_f
    invoke-static {p2, p1}, Ldi0;->e0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->z:Ljava/lang/String;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/32 v0, 0x200000

    goto/16 :goto_4

    :pswitch_10
    invoke-static {p2, p1}, Ldi0;->e0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->z:Ljava/lang/String;

    iput-object p1, p0, Lzh0$e0;->A:Ljava/lang/String;

    iput-object p1, p0, Lzh0$e0;->B:Ljava/lang/String;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/32 v0, 0xe00000

    goto/16 :goto_4

    :pswitch_11
    invoke-static {p2}, Ldi0;->k0(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->x:Ljava/lang/Boolean;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/32 v0, 0x80000

    goto/16 :goto_4

    :pswitch_12
    invoke-static {p2}, Ldi0;->v0(Ljava/lang/String;)Lzh0$e0$e;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->w:Lzh0$e0$e;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/32 v0, 0x40000

    goto/16 :goto_4

    :pswitch_13
    invoke-static {p2}, Ldi0;->x0(Ljava/lang/String;)Lzh0$e0$g;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->v:Lzh0$e0$g;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide v0, 0x1000000000L

    goto/16 :goto_4

    :pswitch_14
    invoke-static {p2}, Ldi0;->w0(Ljava/lang/String;)Lzh0$e0$f;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->u:Lzh0$e0$f;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/32 v0, 0x20000

    goto/16 :goto_4

    :pswitch_15
    invoke-static {p2}, Ldi0;->c0(Ljava/lang/String;)Lzh0$e0$b;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->t:Lzh0$e0$b;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/32 v0, 0x10000

    goto/16 :goto_4

    :pswitch_16
    invoke-static {p2}, Ldi0;->d0(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->s:Ljava/lang/Integer;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/32 v0, 0x8000

    goto/16 :goto_4

    :pswitch_17
    invoke-static {p2}, Ldi0;->b0(Ljava/lang/String;)Lzh0$p;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->r:Lzh0$p;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/16 v0, 0x4000

    goto/16 :goto_4

    :pswitch_18
    invoke-static {p2}, Ldi0;->a0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->q:Ljava/util/List;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/16 v0, 0x2000

    goto/16 :goto_4

    :pswitch_19
    invoke-static {p0, p2}, Ldi0;->Z(Lzh0$e0;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_1a
    invoke-static {p2}, Ldi0;->S(Ljava/lang/String;)Lzh0$f;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->p:Lzh0$f;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/16 v0, 0x1000

    goto/16 :goto_4

    :pswitch_1b
    invoke-static {p2}, Ldi0;->j0(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lzh0$e0;->o:F

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/16 v0, 0x800

    goto/16 :goto_4

    :pswitch_1c
    invoke-static {p2}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->n:Lzh0$p;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/16 v0, 0x400

    goto/16 :goto_4

    :pswitch_1d
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    iput-object p1, p0, Lzh0$e0;->m:[Lzh0$p;

    goto :goto_3

    :cond_7
    invoke-static {p2}, Ldi0;->q0(Ljava/lang/String;)[Lzh0$p;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->m:[Lzh0$p;

    :goto_3
    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/16 v0, 0x200

    goto :goto_4

    :pswitch_1e
    invoke-static {p2}, Ldi0;->X(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lzh0$e0;->l:F

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/16 v0, 0x100

    goto :goto_4

    :pswitch_1f
    invoke-static {p2}, Ldi0;->s0(Ljava/lang/String;)Lzh0$e0$d;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->k:Lzh0$e0$d;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/16 v0, 0x80

    goto :goto_4

    :pswitch_20
    invoke-static {p2}, Ldi0;->r0(Ljava/lang/String;)Lzh0$e0$c;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->j:Lzh0$e0$c;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/16 v0, 0x40

    goto :goto_4

    :pswitch_21
    invoke-static {p2}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->h:Lzh0$p;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/16 v0, 0x20

    goto :goto_4

    :pswitch_22
    invoke-static {p2}, Ldi0;->j0(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lzh0$e0;->g:F

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/16 v0, 0x10

    goto :goto_4

    :pswitch_23
    const-string p1, "stroke"

    invoke-static {p2, p1}, Ldi0;->l0(Ljava/lang/String;Ljava/lang/String;)Lzh0$o0;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->f:Lzh0$o0;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/16 v0, 0x8

    goto :goto_4

    :pswitch_24
    invoke-static {p2}, Ldi0;->j0(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lzh0$e0;->d:F

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/16 v0, 0x4

    goto :goto_4

    :pswitch_25
    invoke-static {p2}, Ldi0;->W(Ljava/lang/String;)Lzh0$e0$a;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->c:Lzh0$e0$a;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/16 v0, 0x2

    goto :goto_4

    :pswitch_26
    const-string p1, "fill"

    invoke-static {p2, p1}, Ldi0;->l0(Ljava/lang/String;Ljava/lang/String;)Lzh0$o0;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->b:Lzh0$o0;

    iget-wide p1, p0, Lzh0$e0;->a:J

    const-wide/16 v0, 0x1

    :goto_4
    or-long/2addr p1, v0

    iput-wide p1, p0, Lzh0$e0;->a:J

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static R(Ljava/lang/String;)Lzh0$c;
    .locals 6

    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rect("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ldi0$d;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ldi0$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ldi0$d;->x()V

    invoke-static {v0}, Ldi0;->i0(Ldi0$d;)Lzh0$p;

    move-result-object v1

    invoke-virtual {v0}, Ldi0$d;->w()Z

    invoke-static {v0}, Ldi0;->i0(Ldi0$d;)Lzh0$p;

    move-result-object v2

    invoke-virtual {v0}, Ldi0$d;->w()Z

    invoke-static {v0}, Ldi0;->i0(Ldi0$d;)Lzh0$p;

    move-result-object v3

    invoke-virtual {v0}, Ldi0$d;->w()Z

    invoke-static {v0}, Ldi0;->i0(Ldi0$d;)Lzh0$p;

    move-result-object v4

    invoke-virtual {v0}, Ldi0$d;->x()V

    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Ldi0$d;->e(C)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lzh0$c;

    invoke-direct {p0, v1, v2, v3, v4}, Lzh0$c;-><init>(Lzh0$p;Lzh0$p;Lzh0$p;Lzh0$p;)V

    return-object p0

    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad rect() clip definition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid clip attribute shape. Only rect() is supported."

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static S(Ljava/lang/String;)Lzh0$f;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x23

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0, v0, v2}, Lvh0;->b(Ljava/lang/String;II)Lvh0;

    move-result-object v0

    const-string v2, "Bad hex colour value: "

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lvh0;->a()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    new-instance p0, Lzh0$f;

    invoke-virtual {v0}, Lvh0;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lzh0$f;-><init>(I)V

    return-object p0

    :cond_0
    if-ne v3, v1, :cond_1

    invoke-virtual {v0}, Lvh0;->c()I

    move-result p0

    and-int/lit16 v0, p0, 0xf00

    and-int/lit16 v2, p0, 0xf0

    and-int/lit8 p0, p0, 0xf

    new-instance v3, Lzh0$f;

    shl-int/lit8 v4, v0, 0x10

    shl-int/lit8 v0, v0, 0xc

    or-int/2addr v0, v4

    shl-int/lit8 v4, v2, 0x8

    or-int/2addr v0, v4

    shl-int/lit8 v1, v2, 0x4

    or-int/2addr v0, v1

    shl-int/lit8 v1, p0, 0x4

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    invoke-direct {v3, p0}, Lzh0$f;-><init>(I)V

    return-object v3

    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "rgb("

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ldi0$d;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ldi0$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ldi0$d;->x()V

    invoke-static {v0}, Ldi0;->T(Ldi0$d;)I

    move-result v1

    invoke-virtual {v0}, Ldi0$d;->w()Z

    invoke-static {v0}, Ldi0;->T(Ldi0$d;)I

    move-result v2

    invoke-virtual {v0}, Ldi0$d;->w()Z

    invoke-static {v0}, Ldi0;->T(Ldi0$d;)I

    move-result v3

    invoke-virtual {v0}, Ldi0$d;->x()V

    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ldi0$d;->e(C)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p0, Lzh0$f;

    shl-int/lit8 v0, v1, 0x10

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    invoke-direct {p0, v0}, Lzh0$f;-><init>(I)V

    return-object p0

    :cond_4
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad rgb() colour value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {p0}, Ldi0;->U(Ljava/lang/String;)Lzh0$f;

    move-result-object p0

    return-object p0
.end method

.method public static T(Ldi0$d;)I
    .locals 2

    invoke-virtual {p0}, Ldi0$d;->m()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/16 v1, 0x25

    invoke-virtual {p0, v1}, Ldi0$d;->e(C)Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x43800000    # 256.0f

    mul-float v0, v0, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr v0, p0

    :cond_0
    const/4 p0, 0x0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/high16 p0, 0x437f0000    # 255.0f

    cmpl-float p0, v0, p0

    if-lez p0, :cond_2

    const/16 p0, 0xff

    goto :goto_0

    :cond_2
    float-to-int p0, v0

    :goto_0
    return p0
.end method

.method public static U(Ljava/lang/String;)Lzh0$f;
    .locals 3

    sget-object v0, Ldi0;->j:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Ldi0;->j()V

    :cond_0
    sget-object v0, Ldi0;->j:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    new-instance p0, Lzh0$f;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lzh0$f;-><init>(I)V

    return-object p0

    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid colour keyword: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static V(Ljava/lang/String;)Lzh0$o0;
    .locals 1

    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "currentColor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lzh0$g;->b()Lzh0$g;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Ldi0;->S(Ljava/lang/String;)Lzh0$f;

    move-result-object p0

    return-object p0
.end method

.method public static W(Ljava/lang/String;)Lzh0$e0$a;
    .locals 3

    const-string v0, "nonzero"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lzh0$e0$a;->a:Lzh0$e0$a;

    return-object p0

    :cond_0
    const-string v0, "evenodd"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lzh0$e0$a;->b:Lzh0$e0$a;

    return-object p0

    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fill-rule property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static X(Ljava/lang/String;)F
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ldi0;->Y(Ljava/lang/String;II)F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid float value (empty string)"

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Y(Ljava/lang/String;II)F
    .locals 1

    invoke-static {p0, p1, p2}, Lxh0;->b(Ljava/lang/String;II)Lxh0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lxh0;->c()F

    move-result p0

    return p0

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid float value: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static Z(Lzh0$e0;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "|caption|icon|menu|message-box|small-caption|status-bar|"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ldi0$d;

    invoke-direct {v0, p1}, Ldi0$d;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    move-object v1, p1

    move-object v2, v1

    :goto_0
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ldi0$d;->s(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ldi0$d;->x()V

    if-eqz v4, :cond_a

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "normal"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    sget-object p1, Ldi0;->l:Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    invoke-static {v4}, Ldi0;->f(Ljava/lang/String;)Lzh0$e0$b;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    const-string v2, "small-caps"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v4

    goto :goto_0

    :cond_5
    :goto_1
    invoke-static {v4}, Ldi0;->b0(Ljava/lang/String;)Lzh0$p;

    move-result-object v2

    invoke-virtual {v0, v3}, Ldi0$d;->e(C)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Ldi0$d;->x()V

    invoke-virtual {v0}, Ldi0$d;->r()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {v3}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    invoke-virtual {v0}, Ldi0$d;->x()V

    goto :goto_2

    :cond_6
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid font style attribute: missing line-height"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    invoke-virtual {v0}, Ldi0$d;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldi0;->a0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzh0$e0;->q:Ljava/util/List;

    iput-object v2, p0, Lzh0$e0;->r:Lzh0$p;

    if-nez p1, :cond_8

    const/16 p1, 0x190

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->s:Ljava/lang/Integer;

    if-nez v1, :cond_9

    sget-object v1, Lzh0$e0$b;->a:Lzh0$e0$b;

    :cond_9
    iput-object v1, p0, Lzh0$e0;->t:Lzh0$e0$b;

    iget-wide v0, p0, Lzh0$e0;->a:J

    const-wide/32 v2, 0x1e000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lzh0$e0;->a:J

    return-void

    :cond_a
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid font style attribute: missing font size and family"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a0(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldi0$d;

    invoke-direct {v0, p0}, Ldi0$d;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v0}, Ldi0$d;->q()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ldi0$d;->s(C)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ldi0$d;->w()Z

    invoke-virtual {v0}, Ldi0$d;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p0
.end method

.method public static b0(Ljava/lang/String;)Lzh0$p;
    .locals 1

    sget-object v0, Ldi0;->k:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Ldi0;->k()V

    :cond_0
    sget-object v0, Ldi0;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzh0$p;

    if-nez v0, :cond_1

    invoke-static {p0}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static c0(Ljava/lang/String;)Lzh0$e0$b;
    .locals 3

    invoke-static {p0}, Ldi0;->f(Ljava/lang/String;)Lzh0$e0$b;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid font-style property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d0(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    sget-object v0, Ldi0;->l:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Ldi0;->l()V

    :cond_0
    sget-object v0, Ldi0;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid font-weight property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "url("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " attribute. Expected \"none\" or \"url()\" format"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Ljava/lang/String;)Lzh0$e0$b;
    .locals 1

    const-string v0, "italic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lzh0$e0$b;->b:Lzh0$e0$b;

    return-object p0

    :cond_0
    const-string v0, "normal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lzh0$e0$b;->a:Lzh0$e0$b;

    return-object p0

    :cond_1
    const-string v0, "oblique"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lzh0$e0$b;->c:Lzh0$e0$b;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g0(Ljava/lang/String;)Lzh0$p;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lzh0$d1;->a:Lzh0$d1;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lzh0$d1;->k:Lzh0$d1;

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzh0$d1;->valueOf(Ljava/lang/String;)Lzh0$d1;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid length unit specifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :try_start_1
    invoke-static {p0, v2, v0}, Ldi0;->Y(Ljava/lang/String;II)F

    move-result v0

    new-instance v2, Lzh0$p;

    invoke-direct {v2, v0, v1}, Lzh0$p;-><init>(FLzh0$d1;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid length value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid length value (empty string)"

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h0(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lzh0$p;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ldi0$d;

    invoke-direct {v1, p0}, Ldi0$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ldi0$d;->x()V

    :goto_0
    invoke-virtual {v1}, Ldi0$d;->g()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v1}, Ldi0$d;->m()Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Ldi0$d;->t()Lzh0$d1;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lzh0$d1;->a:Lzh0$d1;

    :cond_0
    new-instance v3, Lzh0$p;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-direct {v3, p0, v2}, Lzh0$p;-><init>(FLzh0$d1;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ldi0$d;->w()Z

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid length list value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ldi0$d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object v0

    :cond_3
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid length list (empty string)"

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized i()V
    .locals 4

    const-class v0, Ldi0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Ldi0;->m:Ljava/util/HashMap;

    const-string v2, "none"

    sget-object v3, Lyh0$a;->a:Lyh0$a;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->m:Ljava/util/HashMap;

    const-string v2, "xMinYMin"

    sget-object v3, Lyh0$a;->b:Lyh0$a;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->m:Ljava/util/HashMap;

    const-string v2, "xMidYMin"

    sget-object v3, Lyh0$a;->c:Lyh0$a;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->m:Ljava/util/HashMap;

    const-string v2, "xMaxYMin"

    sget-object v3, Lyh0$a;->d:Lyh0$a;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->m:Ljava/util/HashMap;

    const-string v2, "xMinYMid"

    sget-object v3, Lyh0$a;->f:Lyh0$a;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->m:Ljava/util/HashMap;

    const-string v2, "xMidYMid"

    sget-object v3, Lyh0$a;->g:Lyh0$a;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->m:Ljava/util/HashMap;

    const-string v2, "xMaxYMid"

    sget-object v3, Lyh0$a;->h:Lyh0$a;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->m:Ljava/util/HashMap;

    const-string v2, "xMinYMax"

    sget-object v3, Lyh0$a;->j:Lyh0$a;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->m:Ljava/util/HashMap;

    const-string v2, "xMidYMax"

    sget-object v3, Lyh0$a;->k:Lyh0$a;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->m:Ljava/util/HashMap;

    const-string v2, "xMaxYMax"

    sget-object v3, Lyh0$a;->l:Lyh0$a;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static i0(Ldi0$d;)Lzh0$p;
    .locals 1

    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ldi0$d;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lzh0$p;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lzh0$p;-><init>(F)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ldi0$d;->p()Lzh0$p;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized j()V
    .locals 6

    const-class v0, Ldi0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "aliceblue"

    const v3, 0xf0f8ff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "antiquewhite"

    const v3, 0xfaebd7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "aqua"

    const v3, 0xffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "aquamarine"

    const v4, 0x7fffd4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "azure"

    const v4, 0xf0ffff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "beige"

    const v4, 0xf5f5dc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "bisque"

    const v4, 0xffe4c4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "black"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "blanchedalmond"

    const v4, 0xffebcd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "blue"

    const/16 v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "blueviolet"

    const v4, 0x8a2be2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "brown"

    const v4, 0xa52a2a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "burlywood"

    const v4, 0xdeb887

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "cadetblue"

    const v4, 0x5f9ea0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "chartreuse"

    const v4, 0x7fff00

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "chocolate"

    const v4, 0xd2691e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "coral"

    const v4, 0xff7f50

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "cornflowerblue"

    const v4, 0x6495ed

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "cornsilk"

    const v4, 0xfff8dc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "crimson"

    const v4, 0xdc143c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "cyan"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "darkblue"

    const/16 v3, 0x8b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "darkcyan"

    const v3, 0x8b8b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "darkgoldenrod"

    const v3, 0xb8860b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "darkgray"

    const v3, 0xa9a9a9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "darkgreen"

    const/16 v4, 0x6400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "darkgrey"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "darkkhaki"

    const v3, 0xbdb76b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "darkmagenta"

    const v3, 0x8b008b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "darkolivegreen"

    const v3, 0x556b2f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "darkorange"

    const v3, 0xff8c00

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "darkorchid"

    const v3, 0x9932cc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "darkred"

    const/high16 v3, 0x8b0000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "darksalmon"

    const v3, 0xe9967a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "darkseagreen"

    const v3, 0x8fbc8f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "darkslateblue"

    const v3, 0x483d8b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "darkslategray"

    const v3, 0x2f4f4f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "darkslategrey"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "darkturquoise"

    const v3, 0xced1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "darkviolet"

    const v3, 0x9400d3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "deeppink"

    const v3, 0xff1493

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "deepskyblue"

    const v3, 0xbfff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "dimgray"

    const v3, 0x696969

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "dimgrey"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "dodgerblue"

    const v3, 0x1e90ff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "firebrick"

    const v3, 0xb22222

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "floralwhite"

    const v3, 0xfffaf0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "forestgreen"

    const v3, 0x228b22

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "fuchsia"

    const v3, 0xff00ff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "gainsboro"

    const v4, 0xdcdcdc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "ghostwhite"

    const v4, 0xf8f8ff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "gold"

    const v4, 0xffd700

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "goldenrod"

    const v4, 0xdaa520

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "gray"

    const v4, 0x808080

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "green"

    const v5, 0x8000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "greenyellow"

    const v5, 0xadff2f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "grey"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "honeydew"

    const v4, 0xf0fff0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "hotpink"

    const v4, 0xff69b4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "indianred"

    const v4, 0xcd5c5c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "indigo"

    const v4, 0x4b0082

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "ivory"

    const v4, 0xfffff0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "khaki"

    const v4, 0xf0e68c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "lavender"

    const v4, 0xe6e6fa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "lavenderblush"

    const v4, 0xfff0f5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "lawngreen"

    const v4, 0x7cfc00

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "lemonchiffon"

    const v4, 0xfffacd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "lightblue"

    const v4, 0xadd8e6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "lightcoral"

    const v4, 0xf08080

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "lightcyan"

    const v4, 0xe0ffff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "lightgoldenrodyellow"

    const v4, 0xfafad2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "lightgray"

    const v4, 0xd3d3d3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "lightgreen"

    const v5, 0x90ee90

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "lightgrey"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "lightpink"

    const v4, 0xffb6c1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "lightsalmon"

    const v4, 0xffa07a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "lightseagreen"

    const v4, 0x20b2aa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "lightskyblue"

    const v4, 0x87cefa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "lightslategray"

    const v4, 0x778899

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "lightslategrey"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "lightsteelblue"

    const v4, 0xb0c4de

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "lightyellow"

    const v4, 0xffffe0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "lime"

    const v4, 0xff00

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "limegreen"

    const v4, 0x32cd32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "linen"

    const v4, 0xfaf0e6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "magenta"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "maroon"

    const/high16 v3, 0x800000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "mediumaquamarine"

    const v3, 0x66cdaa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "mediumblue"

    const/16 v3, 0xcd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "mediumorchid"

    const v3, 0xba55d3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "mediumpurple"

    const v3, 0x9370db

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "mediumseagreen"

    const v3, 0x3cb371

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "mediumslateblue"

    const v3, 0x7b68ee

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "mediumspringgreen"

    const v3, 0xfa9a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "mediumturquoise"

    const v3, 0x48d1cc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "mediumvioletred"

    const v3, 0xc71585

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "midnightblue"

    const v3, 0x191970

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "mintcream"

    const v3, 0xf5fffa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "mistyrose"

    const v3, 0xffe4e1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "moccasin"

    const v3, 0xffe4b5    # 2.3500096E-38f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "navajowhite"

    const v3, 0xffdead

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "navy"

    const/16 v3, 0x80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "oldlace"

    const v3, 0xfdf5e6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "olive"

    const v3, 0x808000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "olivedrab"

    const v3, 0x6b8e23

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "orange"

    const v3, 0xffa500

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "orangered"

    const v3, 0xff4500

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "orchid"

    const v3, 0xda70d6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "palegoldenrod"

    const v3, 0xeee8aa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "palegreen"

    const v3, 0x98fb98

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "paleturquoise"

    const v3, 0xafeeee

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "palevioletred"

    const v3, 0xdb7093

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "papayawhip"

    const v3, 0xffefd5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "peachpuff"

    const v3, 0xffdab9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "peru"

    const v3, 0xcd853f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "pink"

    const v3, 0xffc0cb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "plum"

    const v3, 0xdda0dd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "powderblue"

    const v3, 0xb0e0e6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "purple"

    const v3, 0x800080

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "red"

    const/high16 v3, 0xff0000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "rosybrown"

    const v3, 0xbc8f8f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "royalblue"

    const v3, 0x4169e1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "saddlebrown"

    const v3, 0x8b4513

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "salmon"

    const v3, 0xfa8072

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "sandybrown"

    const v3, 0xf4a460

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "seagreen"

    const v3, 0x2e8b57

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "seashell"

    const v3, 0xfff5ee

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "sienna"

    const v3, 0xa0522d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "silver"

    const v3, 0xc0c0c0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "skyblue"

    const v3, 0x87ceeb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "slateblue"

    const v3, 0x6a5acd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "slategray"

    const v3, 0x708090

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "slategrey"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "snow"

    const v3, 0xfffafa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "springgreen"

    const v3, 0xff7f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "steelblue"

    const v3, 0x4682b4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "tan"

    const v3, 0xd2b48c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "teal"

    const v3, 0x8080

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "thistle"

    const v3, 0xd8bfd8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "tomato"

    const v3, 0xff6347

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "turquoise"

    const v3, 0x40e0d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "violet"

    const v3, 0xee82ee

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "wheat"

    const v3, 0xf5deb3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "white"

    const v3, 0xffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "whitesmoke"

    const v3, 0xf5f5f5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "yellow"

    const v3, 0xffff00

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->j:Ljava/util/HashMap;

    const-string v2, "yellowgreen"

    const v3, 0x9acd32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static j0(Ljava/lang/String;)F
    .locals 3

    invoke-static {p0}, Ldi0;->X(Ljava/lang/String;)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p0, v1

    if-gez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v1, p0, v0

    if-lez v1, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_1
    :goto_0
    return p0
.end method

.method public static declared-synchronized k()V
    .locals 6

    const-class v0, Ldi0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Ldi0;->k:Ljava/util/HashMap;

    const-string v2, "xx-small"

    new-instance v3, Lzh0$p;

    const v4, 0x3f31a9fc    # 0.694f

    sget-object v5, Lzh0$d1;->h:Lzh0$d1;

    invoke-direct {v3, v4, v5}, Lzh0$p;-><init>(FLzh0$d1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->k:Ljava/util/HashMap;

    const-string v2, "x-small"

    new-instance v3, Lzh0$p;

    const v4, 0x3f553f7d    # 0.833f

    invoke-direct {v3, v4, v5}, Lzh0$p;-><init>(FLzh0$d1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->k:Ljava/util/HashMap;

    const-string v2, "small"

    new-instance v3, Lzh0$p;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-direct {v3, v4, v5}, Lzh0$p;-><init>(FLzh0$d1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->k:Ljava/util/HashMap;

    const-string v2, "medium"

    new-instance v3, Lzh0$p;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-direct {v3, v4, v5}, Lzh0$p;-><init>(FLzh0$d1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->k:Ljava/util/HashMap;

    const-string v2, "large"

    new-instance v3, Lzh0$p;

    const v4, 0x41666666    # 14.4f

    invoke-direct {v3, v4, v5}, Lzh0$p;-><init>(FLzh0$d1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->k:Ljava/util/HashMap;

    const-string v2, "x-large"

    new-instance v3, Lzh0$p;

    const v4, 0x418a6666    # 17.3f

    invoke-direct {v3, v4, v5}, Lzh0$p;-><init>(FLzh0$d1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->k:Ljava/util/HashMap;

    const-string v2, "xx-large"

    new-instance v3, Lzh0$p;

    const v4, 0x41a5999a    # 20.7f

    invoke-direct {v3, v4, v5}, Lzh0$p;-><init>(FLzh0$d1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->k:Ljava/util/HashMap;

    const-string v2, "smaller"

    new-instance v3, Lzh0$p;

    const v4, 0x42a6a8f6    # 83.33f

    sget-object v5, Lzh0$d1;->k:Lzh0$d1;

    invoke-direct {v3, v4, v5}, Lzh0$p;-><init>(FLzh0$d1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->k:Ljava/util/HashMap;

    const-string v2, "larger"

    new-instance v3, Lzh0$p;

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-direct {v3, v4, v5}, Lzh0$p;-><init>(FLzh0$d1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static k0(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const-string v0, "visible"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "hidden"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "scroll"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid toverflow property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static declared-synchronized l()V
    .locals 6

    const-class v0, Ldi0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Ldi0;->l:Ljava/util/HashMap;

    const-string v2, "normal"

    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->l:Ljava/util/HashMap;

    const-string v2, "bold"

    const/16 v4, 0x2bc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->l:Ljava/util/HashMap;

    const-string v2, "bolder"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->l:Ljava/util/HashMap;

    const-string v2, "lighter"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->l:Ljava/util/HashMap;

    const-string v2, "100"

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->l:Ljava/util/HashMap;

    const-string v2, "200"

    const/16 v5, 0xc8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->l:Ljava/util/HashMap;

    const-string v2, "300"

    const/16 v5, 0x12c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->l:Ljava/util/HashMap;

    const-string v2, "400"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->l:Ljava/util/HashMap;

    const-string v2, "500"

    const/16 v3, 0x1f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->l:Ljava/util/HashMap;

    const-string v2, "600"

    const/16 v3, 0x258

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->l:Ljava/util/HashMap;

    const-string v2, "700"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->l:Ljava/util/HashMap;

    const-string v2, "800"

    const/16 v3, 0x320

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ldi0;->l:Ljava/util/HashMap;

    const-string v2, "900"

    const/16 v3, 0x384

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static l0(Ljava/lang/String;Ljava/lang/String;)Lzh0$o0;
    .locals 2

    const-string v0, "url("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0}, Ldi0;->V(Ljava/lang/String;)Lzh0$o0;

    move-result-object v1

    :cond_0
    new-instance p0, Lzh0$u;

    invoke-direct {p0, p1, v1}, Lzh0$u;-><init>(Ljava/lang/String;Lzh0$o0;)V

    return-object p0

    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " attribute. Unterminated url() reference"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, Ldi0;->V(Ljava/lang/String;)Lzh0$o0;

    move-result-object p0

    return-object p0
.end method

.method public static m0(Ljava/lang/String;)Lzh0$w;
    .locals 19

    new-instance v0, Ldi0$d;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ldi0$d;-><init>(Ljava/lang/String;)V

    new-instance v9, Lzh0$w;

    invoke-direct {v9}, Lzh0$w;-><init>()V

    invoke-virtual {v0}, Ldi0$d;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v9

    :cond_0
    invoke-virtual {v0}, Ldi0$d;->k()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x4d

    const/16 v10, 0x6d

    if-eq v1, v2, :cond_1

    if-eq v1, v10, :cond_1

    return-object v9

    :cond_1
    move v12, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v0}, Ldi0$d;->x()V

    const/16 v5, 0x6c

    const/high16 v6, 0x40000000    # 2.0f

    const-string v7, " path segment"

    const-string v8, "Bad path coords for "

    const-string v15, "SVGParser"

    const/high16 v16, 0x7fc00000    # Float.NaN

    sparse-switch v12, :sswitch_data_0

    return-object v9

    :sswitch_0
    invoke-virtual {v9}, Lzh0$w;->close()V

    move v1, v13

    move v2, v1

    move v3, v14

    :goto_1
    move v4, v3

    :goto_2
    const/16 v16, 0x0

    goto/16 :goto_9

    :sswitch_1
    invoke-virtual {v0}, Ldi0$d;->n()F

    move-result v4

    cmpl-float v5, v4, v16

    if-nez v5, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_2
    const/16 v5, 0x76

    if-ne v12, v5, :cond_3

    add-float/2addr v4, v3

    :cond_3
    move v3, v4

    invoke-virtual {v9, v1, v3}, Lzh0$w;->e(FF)V

    goto :goto_1

    :sswitch_2
    mul-float v5, v1, v6

    sub-float v2, v5, v2

    mul-float v6, v6, v3

    sub-float v4, v6, v4

    invoke-virtual {v0}, Ldi0$d;->n()F

    move-result v5

    invoke-virtual {v0, v5}, Ldi0$d;->d(F)F

    move-result v6

    cmpl-float v16, v6, v16

    if-nez v16, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :cond_4
    const/16 v7, 0x74

    if-ne v12, v7, :cond_8

    add-float/2addr v5, v1

    add-float/2addr v6, v3

    goto :goto_4

    :sswitch_3
    mul-float v5, v1, v6

    sub-float v2, v5, v2

    mul-float v6, v6, v3

    sub-float v4, v6, v4

    invoke-virtual {v0}, Ldi0$d;->n()F

    move-result v5

    invoke-virtual {v0, v5}, Ldi0$d;->d(F)F

    move-result v6

    invoke-virtual {v0, v6}, Ldi0$d;->d(F)F

    move-result v11

    invoke-virtual {v0, v11}, Ldi0$d;->d(F)F

    move-result v17

    cmpl-float v16, v17, v16

    if-nez v16, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :cond_5
    const/16 v7, 0x73

    if-ne v12, v7, :cond_6

    add-float/2addr v11, v1

    add-float v17, v17, v3

    add-float/2addr v5, v1

    add-float/2addr v6, v3

    :cond_6
    move v8, v5

    move v15, v6

    move-object v1, v9

    move v3, v4

    goto/16 :goto_6

    :sswitch_4
    invoke-virtual {v0}, Ldi0$d;->n()F

    move-result v2

    invoke-virtual {v0, v2}, Ldi0$d;->d(F)F

    move-result v4

    invoke-virtual {v0, v4}, Ldi0$d;->d(F)F

    move-result v5

    invoke-virtual {v0, v5}, Ldi0$d;->d(F)F

    move-result v6

    cmpl-float v11, v6, v16

    if-nez v11, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_3

    :cond_7
    const/16 v7, 0x71

    if-ne v12, v7, :cond_8

    add-float/2addr v5, v1

    add-float/2addr v6, v3

    add-float/2addr v2, v1

    add-float/2addr v4, v3

    :cond_8
    :goto_4
    move v1, v5

    move v3, v6

    invoke-virtual {v9, v2, v4, v1, v3}, Lzh0$w;->a(FFFF)V

    goto/16 :goto_2

    :sswitch_5
    invoke-virtual {v0}, Ldi0$d;->n()F

    move-result v2

    invoke-virtual {v0, v2}, Ldi0$d;->d(F)F

    move-result v4

    cmpl-float v6, v4, v16

    if-nez v6, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_3

    :cond_9
    if-ne v12, v10, :cond_a

    invoke-virtual {v9}, Lzh0$w;->i()Z

    move-result v6

    if-nez v6, :cond_a

    add-float/2addr v2, v1

    add-float/2addr v4, v3

    :cond_a
    move v1, v2

    move v3, v4

    invoke-virtual {v9, v1, v3}, Lzh0$w;->b(FF)V

    if-ne v12, v10, :cond_b

    goto :goto_5

    :cond_b
    const/16 v5, 0x4c

    :goto_5
    move v2, v1

    move v13, v2

    move v4, v3

    move v14, v4

    move v12, v5

    goto/16 :goto_2

    :sswitch_6
    invoke-virtual {v0}, Ldi0$d;->n()F

    move-result v2

    invoke-virtual {v0, v2}, Ldi0$d;->d(F)F

    move-result v4

    cmpl-float v6, v4, v16

    if-nez v6, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_3

    :cond_c
    if-ne v12, v5, :cond_d

    add-float/2addr v2, v1

    add-float/2addr v4, v3

    :cond_d
    move v1, v2

    move v3, v4

    invoke-virtual {v9, v1, v3}, Lzh0$w;->e(FF)V

    move v2, v1

    goto/16 :goto_1

    :sswitch_7
    invoke-virtual {v0}, Ldi0$d;->n()F

    move-result v2

    cmpl-float v5, v2, v16

    if-nez v5, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_3

    :cond_e
    const/16 v5, 0x68

    if-ne v12, v5, :cond_f

    add-float/2addr v2, v1

    :cond_f
    move v1, v2

    invoke-virtual {v9, v1, v3}, Lzh0$w;->e(FF)V

    move v2, v1

    goto/16 :goto_2

    :sswitch_8
    invoke-virtual {v0}, Ldi0$d;->n()F

    move-result v2

    invoke-virtual {v0, v2}, Ldi0$d;->d(F)F

    move-result v4

    invoke-virtual {v0, v4}, Ldi0$d;->d(F)F

    move-result v5

    invoke-virtual {v0, v5}, Ldi0$d;->d(F)F

    move-result v6

    invoke-virtual {v0, v6}, Ldi0$d;->d(F)F

    move-result v11

    invoke-virtual {v0, v11}, Ldi0$d;->d(F)F

    move-result v17

    cmpl-float v16, v17, v16

    if-nez v16, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_3

    :cond_10
    const/16 v7, 0x63

    if-ne v12, v7, :cond_11

    add-float/2addr v11, v1

    add-float v17, v17, v3

    add-float/2addr v2, v1

    add-float/2addr v4, v3

    add-float/2addr v5, v1

    add-float/2addr v6, v3

    :cond_11
    move v3, v4

    move v8, v5

    move v15, v6

    move-object v1, v9

    :goto_6
    move v4, v8

    move v5, v15

    move v6, v11

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lzh0$w;->c(FFFFFF)V

    move v2, v8

    move v1, v11

    move v4, v15

    move/from16 v3, v17

    goto/16 :goto_2

    :sswitch_9
    invoke-virtual {v0}, Ldi0$d;->n()F

    move-result v2

    invoke-virtual {v0, v2}, Ldi0$d;->d(F)F

    move-result v4

    invoke-virtual {v0, v4}, Ldi0$d;->d(F)F

    move-result v5

    cmpl-float v6, v5, v16

    if-nez v6, :cond_12

    const/4 v6, 0x0

    goto :goto_7

    :cond_12
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    :goto_7
    invoke-virtual {v0, v6}, Ldi0$d;->c(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Ldi0$d;->c(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v11

    if-nez v11, :cond_13

    const/high16 v10, 0x7fc00000    # Float.NaN

    goto :goto_8

    :cond_13
    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    :goto_8
    invoke-virtual {v0, v10}, Ldi0$d;->d(F)F

    move-result v10

    invoke-virtual {v0, v10}, Ldi0$d;->d(F)F

    move-result v17

    cmpl-float v16, v17, v16

    if-eqz v16, :cond_18

    const/16 v16, 0x0

    cmpg-float v18, v2, v16

    if-ltz v18, :cond_18

    cmpg-float v18, v4, v16

    if-gez v18, :cond_14

    goto :goto_a

    :cond_14
    const/16 v7, 0x61

    if-ne v12, v7, :cond_15

    add-float/2addr v10, v1

    add-float v17, v17, v3

    :cond_15
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object v1, v9

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v10

    move/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Lzh0$w;->d(FFFZZFF)V

    move v1, v10

    move v2, v1

    move/from16 v3, v17

    move v4, v3

    :goto_9
    invoke-virtual {v0}, Ldi0$d;->w()Z

    invoke-virtual {v0}, Ldi0$d;->g()Z

    move-result v5

    if-eqz v5, :cond_16

    return-object v9

    :cond_16
    invoke-virtual {v0}, Ldi0$d;->h()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v0}, Ldi0$d;->k()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :cond_17
    const/16 v10, 0x6d

    goto/16 :goto_0

    :cond_18
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_9
        0x43 -> :sswitch_8
        0x48 -> :sswitch_7
        0x4c -> :sswitch_6
        0x4d -> :sswitch_5
        0x51 -> :sswitch_4
        0x53 -> :sswitch_3
        0x54 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
        0x61 -> :sswitch_9
        0x63 -> :sswitch_8
        0x68 -> :sswitch_7
        0x6c -> :sswitch_6
        0x6d -> :sswitch_5
        0x71 -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0x76 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method public static n0(Lzh0$p0;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Ldi0;->m:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Ldi0;->i()V

    :cond_0
    new-instance v0, Ldi0$d;

    invoke-direct {v0, p1}, Ldi0$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ldi0$d;->x()V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ldi0$d;->r()Ljava/lang/String;

    move-result-object v2

    const-string v3, "defer"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ldi0$d;->x()V

    invoke-virtual {v0}, Ldi0$d;->r()Ljava/lang/String;

    move-result-object v2

    :cond_1
    sget-object v3, Ldi0;->m:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyh0$a;

    invoke-virtual {v0}, Ldi0$d;->x()V

    invoke-virtual {v0}, Ldi0$d;->g()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ldi0$d;->r()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lyh0$b;->a:Lyh0$b;

    goto :goto_0

    :cond_2
    const-string v1, "slice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v1, Lyh0$b;->b:Lyh0$b;

    goto :goto_0

    :cond_3
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid preserveAspectRatio definition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    new-instance p1, Lyh0;

    invoke-direct {p1, v2, v1}, Lyh0;-><init>(Lyh0$a;Lyh0$b;)V

    iput-object p1, p0, Lzh0$p0;->n:Lyh0;

    return-void
.end method

.method public static o0(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldi0$d;

    invoke-direct {v0, p0}, Ldi0$d;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ldi0$d;->g()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ldi0$d;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://www.w3.org/TR/SVG11/feature#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, "UNSUPPORTED"

    :goto_1
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ldi0$d;->x()V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static p0(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldi0$d;

    invoke-direct {v0, p0}, Ldi0$d;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ldi0$d;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ldi0$d;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ldi0$d;->x()V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static q0(Ljava/lang/String;)[Lzh0$p;
    .locals 7

    new-instance v0, Ldi0$d;

    invoke-direct {v0, p0}, Ldi0$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ldi0$d;->x()V

    invoke-virtual {v0}, Ldi0$d;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Ldi0$d;->p()Lzh0$p;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v1}, Lzh0$p;->i()Z

    move-result v3

    const-string v4, "Invalid stroke-dasharray. Dash segemnts cannot be negative: "

    if-nez v3, :cond_6

    invoke-virtual {v1}, Lzh0$p;->b()F

    move-result v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v0}, Ldi0$d;->g()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ldi0$d;->w()Z

    invoke-virtual {v0}, Ldi0$d;->p()Lzh0$p;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lzh0$p;->i()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lzh0$p;->b()F

    move-result v1

    add-float/2addr v3, v1

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stroke-dasharray. Non-Length content found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 p0, 0x0

    cmpl-float p0, v3, p0

    if-nez p0, :cond_5

    return-object v2

    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lzh0$p;

    invoke-interface {v5, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lzh0$p;

    return-object p0

    :cond_6
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static r0(Ljava/lang/String;)Lzh0$e0$c;
    .locals 3

    const-string v0, "butt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lzh0$e0$c;->a:Lzh0$e0$c;

    return-object p0

    :cond_0
    const-string v0, "round"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lzh0$e0$c;->b:Lzh0$e0$c;

    return-object p0

    :cond_1
    const-string v0, "square"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lzh0$e0$c;->c:Lzh0$e0$c;

    return-object p0

    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stroke-linecap property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static s0(Ljava/lang/String;)Lzh0$e0$d;
    .locals 3

    const-string v0, "miter"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lzh0$e0$d;->a:Lzh0$e0$d;

    return-object p0

    :cond_0
    const-string v0, "round"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lzh0$e0$d;->b:Lzh0$e0$d;

    return-object p0

    :cond_1
    const-string v0, "bevel"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lzh0$e0$d;->c:Lzh0$e0$d;

    return-object p0

    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stroke-linejoin property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static t0(Lzh0$l0;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ldi0$d;

    const-string v1, "/\\*.*?\\*/"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ldi0$d;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/16 p1, 0x3a

    invoke-virtual {v0, p1}, Ldi0$d;->s(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ldi0$d;->x()V

    invoke-virtual {v0, p1}, Ldi0$d;->e(C)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ldi0$d;->x()V

    const/16 p1, 0x3b

    invoke-virtual {v0, p1}, Ldi0$d;->s(C)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    return-void

    :cond_2
    invoke-virtual {v0}, Ldi0$d;->x()V

    invoke-virtual {v0}, Ldi0$d;->g()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, p1}, Ldi0$d;->e(C)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_3
    iget-object p1, p0, Lzh0$l0;->f:Lzh0$e0;

    if-nez p1, :cond_4

    new-instance p1, Lzh0$e0;

    invoke-direct {p1}, Lzh0$e0;-><init>()V

    iput-object p1, p0, Lzh0$l0;->f:Lzh0$e0;

    :cond_4
    iget-object p1, p0, Lzh0$l0;->f:Lzh0$e0;

    invoke-static {p1, v1, v2}, Ldi0;->F0(Lzh0$e0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ldi0$d;->x()V

    goto :goto_0
.end method

.method public static u0(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldi0$d;

    invoke-direct {v0, p0}, Ldi0$d;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ldi0$d;->g()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ldi0$d;->r()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v2, Ljava/util/Locale;

    const-string v3, ""

    invoke-direct {v2, v1, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ldi0$d;->x()V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static v0(Ljava/lang/String;)Lzh0$e0$e;
    .locals 3

    const-string v0, "start"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lzh0$e0$e;->a:Lzh0$e0$e;

    return-object p0

    :cond_0
    const-string v0, "middle"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lzh0$e0$e;->b:Lzh0$e0$e;

    return-object p0

    :cond_1
    const-string v0, "end"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lzh0$e0$e;->c:Lzh0$e0$e;

    return-object p0

    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid text-anchor property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static w0(Ljava/lang/String;)Lzh0$e0$f;
    .locals 3

    const-string v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lzh0$e0$f;->a:Lzh0$e0$f;

    return-object p0

    :cond_0
    const-string v0, "underline"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lzh0$e0$f;->b:Lzh0$e0$f;

    return-object p0

    :cond_1
    const-string v0, "overline"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lzh0$e0$f;->c:Lzh0$e0$f;

    return-object p0

    :cond_2
    const-string v0, "line-through"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lzh0$e0$f;->d:Lzh0$e0$f;

    return-object p0

    :cond_3
    const-string v0, "blink"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lzh0$e0$f;->f:Lzh0$e0$f;

    return-object p0

    :cond_4
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid text-decoration property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static x0(Ljava/lang/String;)Lzh0$e0$g;
    .locals 3

    const-string v0, "ltr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lzh0$e0$g;->a:Lzh0$e0$g;

    return-object p0

    :cond_0
    const-string v0, "rtl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lzh0$e0$g;->b:Lzh0$e0$g;

    return-object p0

    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid direction property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static z0(Ljava/lang/String;)Lzh0$e0$h;
    .locals 3

    const-string v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lzh0$e0$h;->a:Lzh0$e0$h;

    return-object p0

    :cond_0
    const-string v0, "non-scaling-stroke"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lzh0$e0$h;->b:Lzh0$e0$h;

    return-object p0

    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid vector-effect property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A(Lzh0$r;Lorg/xml/sax/Attributes;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ldi0$a;->b:[I

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string v3, "auto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v2, 0x7fc00000    # Float.NaN

    goto :goto_1

    :cond_0
    invoke-static {v2}, Ldi0;->X(Ljava/lang/String;)F

    move-result v2

    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p1, Lzh0$r;->u:Ljava/lang/Float;

    goto :goto_2

    :pswitch_1
    const-string v3, "strokeWidth"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v0, p1, Lzh0$r;->p:Z

    goto :goto_2

    :cond_1
    const-string v3, "userSpaceOnUse"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p1, Lzh0$r;->p:Z

    goto :goto_2

    :cond_2
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid value for attribute markerUnits"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    invoke-static {v2}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v2

    iput-object v2, p1, Lzh0$r;->t:Lzh0$p;

    invoke-virtual {v2}, Lzh0$p;->i()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid <marker> element. markerHeight cannot be negative"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    invoke-static {v2}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v2

    iput-object v2, p1, Lzh0$r;->s:Lzh0$p;

    invoke-virtual {v2}, Lzh0$p;->i()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid <marker> element. markerWidth cannot be negative"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    invoke-static {v2}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v2

    iput-object v2, p1, Lzh0$r;->r:Lzh0$p;

    goto :goto_2

    :pswitch_5
    invoke-static {v2}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v2

    iput-object v2, p1, Lzh0$r;->q:Lzh0$p;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final B(Lzh0$s;Lorg/xml/sax/Attributes;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_c

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldi0$a;->b:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_a

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6

    const/16 v3, 0x2b

    const-string v4, "userSpaceOnUse"

    const-string v5, "objectBoundingBox"

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    iput-object v1, p1, Lzh0$s;->o:Ljava/lang/Boolean;

    goto :goto_3

    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid value for attribute maskContentUnits"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    iput-object v1, p1, Lzh0$s;->n:Ljava/lang/Boolean;

    goto :goto_3

    :cond_4
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_5
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid value for attribute maskUnits"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$s;->s:Lzh0$p;

    invoke-virtual {v1}, Lzh0$p;->i()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid <mask> element. height cannot be negative"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$s;->r:Lzh0$p;

    invoke-virtual {v1}, Lzh0$p;->i()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid <mask> element. width cannot be negative"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$s;->q:Lzh0$p;

    goto :goto_3

    :cond_b
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$s;->p:Lzh0$p;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public final B0(Lorg/xml/sax/Attributes;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<path>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_0

    new-instance v1, Lzh0$v;

    invoke-direct {v1}, Lzh0$v;-><init>()V

    iget-object v2, p0, Ldi0;->a:Lzh0;

    iput-object v2, v1, Lzh0$n0;->a:Lzh0;

    iput-object v0, v1, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v1, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->N(Lzh0$n;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->t(Lzh0$g0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->C(Lzh0$v;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v1}, Lzh0$j0;->f(Lzh0$n0;)V

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final C(Lzh0$v;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldi0$a;->b:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Ldi0;->X(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p1, Lzh0$v;->p:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid <path> element. pathLength cannot be negative"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {v1}, Ldi0;->m0(Ljava/lang/String;)Lzh0$w;

    move-result-object v1

    iput-object v1, p1, Lzh0$v;->o:Lzh0$w;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final C0(Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<pattern>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_0

    new-instance v0, Lzh0$y;

    invoke-direct {v0}, Lzh0$y;-><init>()V

    iget-object v1, p0, Ldi0;->a:Lzh0;

    iput-object v1, v0, Lzh0$n0;->a:Lzh0;

    iget-object v1, p0, Ldi0;->b:Lzh0$j0;

    iput-object v1, v0, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v0, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->t(Lzh0$g0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->P(Lzh0$r0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->D(Lzh0$y;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v0}, Lzh0$j0;->f(Lzh0$n0;)V

    iput-object v0, p0, Ldi0;->b:Lzh0$j0;

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final D(Lzh0$y;Lorg/xml/sax/Attributes;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_c

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldi0$a;->b:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_a

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6

    const/4 v3, 0x6

    if-eq v2, v3, :cond_4

    const-string v3, "userSpaceOnUse"

    const-string v4, "objectBoundingBox"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0, v1}, Ldi0;->y0(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, p1, Lzh0$y;->r:Landroid/graphics/Matrix;

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    iput-object v1, p1, Lzh0$y;->q:Ljava/lang/Boolean;

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid value for attribute patternContentUnits"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    iput-object v1, p1, Lzh0$y;->p:Ljava/lang/Boolean;

    goto :goto_3

    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_3
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid value for attribute patternUnits"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/1999/xlink"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    iput-object v1, p1, Lzh0$y;->w:Ljava/lang/String;

    goto :goto_3

    :cond_6
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$y;->v:Lzh0$p;

    invoke-virtual {v1}, Lzh0$p;->i()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid <pattern> element. height cannot be negative"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$y;->u:Lzh0$p;

    invoke-virtual {v1}, Lzh0$p;->i()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid <pattern> element. width cannot be negative"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$y;->t:Lzh0$p;

    goto :goto_3

    :cond_b
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$y;->s:Lzh0$p;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_c
    return-void

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final D0(Lorg/xml/sax/Attributes;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<polygon>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_0

    new-instance v1, Lzh0$a0;

    invoke-direct {v1}, Lzh0$a0;-><init>()V

    iget-object v2, p0, Ldi0;->a:Lzh0;

    iput-object v2, v1, Lzh0$n0;->a:Lzh0;

    iput-object v0, v1, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v1, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->N(Lzh0$n;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->t(Lzh0$g0;Lorg/xml/sax/Attributes;)V

    const-string v0, "polygon"

    invoke-virtual {p0, v1, p1, v0}, Ldi0;->E(Lzh0$z;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v1}, Lzh0$j0;->f(Lzh0$n0;)V

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final E(Lzh0$z;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v2

    sget-object v3, Ldi0$b;->X:Ldi0$b;

    if-ne v2, v3, :cond_3

    new-instance v2, Ldi0$d;

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ldi0$d;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ldi0$d;->x()V

    :goto_1
    invoke-virtual {v2}, Ldi0$d;->g()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Ldi0$d;->m()Ljava/lang/Float;

    move-result-object v4

    const-string v5, "Invalid <"

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ldi0$d;->w()Z

    invoke-virtual {v2}, Ldi0$d;->m()Ljava/lang/Float;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ldi0$d;->w()Z

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "> points attribute. There should be an even number of coordinates."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "> points attribute. Non-coordinate content found in list."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [F

    iput-object v2, p1, Lzh0$z;->o:[F

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    iget-object v5, p1, Lzh0$z;->o:[F

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v5, v3

    move v3, v6

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public final E0(Lorg/xml/sax/Attributes;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<polyline>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_0

    new-instance v1, Lzh0$z;

    invoke-direct {v1}, Lzh0$z;-><init>()V

    iget-object v2, p0, Ldi0;->a:Lzh0;

    iput-object v2, v1, Lzh0$n0;->a:Lzh0;

    iput-object v0, v1, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v1, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->N(Lzh0$n;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->t(Lzh0$g0;Lorg/xml/sax/Attributes;)V

    const-string v0, "polyline"

    invoke-virtual {p0, v1, p1, v0}, Ldi0;->E(Lzh0$z;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v1}, Lzh0$j0;->f(Lzh0$n0;)V

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final F(Lzh0$q0;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldi0$a;->b:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x23

    if-eq v2, v3, :cond_2

    const/16 v3, 0x24

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$q0;->o:Lzh0$p;

    invoke-virtual {v1}, Lzh0$p;->i()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid <radialGradient> element. r cannot be negative"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$q0;->n:Lzh0$p;

    goto :goto_1

    :pswitch_2
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$q0;->m:Lzh0$p;

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$q0;->q:Lzh0$p;

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$q0;->p:Lzh0$p;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final G(Lzh0$b0;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_a

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldi0$a;->b:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$b0;->t:Lzh0$p;

    invoke-virtual {v1}, Lzh0$p;->i()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid <rect> element. ry cannot be negative"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$b0;->s:Lzh0$p;

    invoke-virtual {v1}, Lzh0$p;->i()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid <rect> element. rx cannot be negative"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$b0;->r:Lzh0$p;

    invoke-virtual {v1}, Lzh0$p;->i()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid <rect> element. height cannot be negative"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$b0;->q:Lzh0$p;

    invoke-virtual {v1}, Lzh0$p;->i()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid <rect> element. width cannot be negative"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$b0;->p:Lzh0$p;

    goto :goto_1

    :cond_9
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$b0;->o:Lzh0$p;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final G0(Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<radialGradient>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_0

    new-instance v0, Lzh0$q0;

    invoke-direct {v0}, Lzh0$q0;-><init>()V

    iget-object v1, p0, Ldi0;->a:Lzh0;

    iput-object v1, v0, Lzh0$n0;->a:Lzh0;

    iget-object v1, p0, Ldi0;->b:Lzh0$j0;

    iput-object v1, v0, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v0, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->w(Lzh0$j;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->F(Lzh0$q0;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v0}, Lzh0$j0;->f(Lzh0$n0;)V

    iput-object v0, p0, Ldi0;->b:Lzh0$j0;

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final H(Lzh0$f0;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldi0$a;->b:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iput-object v1, p1, Lzh0$f0;->t:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$f0;->s:Lzh0$p;

    invoke-virtual {v1}, Lzh0$p;->i()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid <svg> element. height cannot be negative"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$f0;->r:Lzh0$p;

    invoke-virtual {v1}, Lzh0$p;->i()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid <svg> element. width cannot be negative"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$f0;->q:Lzh0$p;

    goto :goto_1

    :cond_6
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$f0;->p:Lzh0$p;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final H0(Lorg/xml/sax/Attributes;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<rect>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_0

    new-instance v1, Lzh0$b0;

    invoke-direct {v1}, Lzh0$b0;-><init>()V

    iget-object v2, p0, Ldi0;->a:Lzh0;

    iput-object v2, v1, Lzh0$n0;->a:Lzh0;

    iput-object v0, v1, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v1, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->N(Lzh0$n;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->t(Lzh0$g0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->G(Lzh0$b0;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v1}, Lzh0$j0;->f(Lzh0$n0;)V

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final I(Lzh0$d0;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldi0$a;->b:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x25

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Ldi0;->f0(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p1, Lzh0$d0;->h:Ljava/lang/Float;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final I0(Lorg/xml/sax/Attributes;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<solidColor>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_0

    new-instance v1, Lzh0$c0;

    invoke-direct {v1}, Lzh0$c0;-><init>()V

    iget-object v2, p0, Ldi0;->a:Lzh0;

    iput-object v2, v1, Lzh0$n0;->a:Lzh0;

    iput-object v0, v1, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v1, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v1}, Lzh0$j0;->f(Lzh0$n0;)V

    iput-object v1, p0, Ldi0;->b:Lzh0$j0;

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final J(Lzh0$l0;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Ldi0$a;->b:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_2

    iget-object v1, p1, Lzh0$l0;->e:Lzh0$e0;

    if-nez v1, :cond_1

    new-instance v1, Lzh0$e0;

    invoke-direct {v1}, Lzh0$e0;-><init>()V

    iput-object v1, p1, Lzh0$l0;->e:Lzh0$e0;

    :cond_1
    iget-object v1, p1, Lzh0$l0;->e:Lzh0$e0;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ldi0;->F0(Lzh0$e0;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {v1}, Luh0;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lzh0$l0;->g:Ljava/util/List;

    goto :goto_1

    :cond_3
    invoke-static {p1, v1}, Ldi0;->t0(Lzh0$l0;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final J0(Lorg/xml/sax/Attributes;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<stop>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lzh0$j;

    if-eqz v1, :cond_0

    new-instance v1, Lzh0$d0;

    invoke-direct {v1}, Lzh0$d0;-><init>()V

    iget-object v2, p0, Ldi0;->a:Lzh0;

    iput-object v2, v1, Lzh0$n0;->a:Lzh0;

    iput-object v0, v1, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v1, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->I(Lzh0$d0;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v1}, Lzh0$j0;->f(Lzh0$n0;)V

    iput-object v1, p0, Ldi0;->b:Lzh0$j0;

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. <stop> elements are only valid inside <linearGradiant> or <radialGradient> elements."

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final K(Lzh0$u0;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldi0$a;->b:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/1999/xlink"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iput-object v1, p1, Lzh0$u0;->n:Ljava/lang/String;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final K0(Lorg/xml/sax/Attributes;)V
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "<style>"

    invoke-virtual {p0, v2, v1}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    const-string v2, "all"

    const/4 v3, 0x1

    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ldi0$a;->b:[I

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x57

    if-eq v5, v6, :cond_1

    const/16 v6, 0x58

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, v4

    goto :goto_1

    :cond_1
    const-string v3, "text/css"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    sget-object p1, Luh0$f;->j:Luh0$f;

    invoke-static {v2, p1}, Luh0;->b(Ljava/lang/String;Luh0$f;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v1, p0, Ldi0;->h:Z

    goto :goto_2

    :cond_3
    iput-boolean v1, p0, Ldi0;->c:Z

    iput v1, p0, Ldi0;->d:I

    :goto_2
    return-void

    :cond_4
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final L(Lzh0$z0;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldi0$a;->b:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/16 v3, 0x27

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$z0;->o:Lzh0$p;

    goto :goto_1

    :cond_1
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/1999/xlink"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iput-object v1, p1, Lzh0$z0;->n:Ljava/lang/String;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final L0(Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<svg>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lzh0$f0;

    invoke-direct {v0}, Lzh0$f0;-><init>()V

    iget-object v1, p0, Ldi0;->a:Lzh0;

    iput-object v1, v0, Lzh0$n0;->a:Lzh0;

    iget-object v1, p0, Ldi0;->b:Lzh0$j0;

    iput-object v1, v0, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v0, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->t(Lzh0$g0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->P(Lzh0$r0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->H(Lzh0$f0;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    if-nez p1, :cond_0

    iget-object p1, p0, Ldi0;->a:Lzh0;

    invoke-virtual {p1, v0}, Lzh0;->q(Lzh0$f0;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lzh0$j0;->f(Lzh0$n0;)V

    :goto_0
    iput-object v0, p0, Ldi0;->b:Lzh0$j0;

    return-void
.end method

.method public final M(Lzh0$a1;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldi0$a;->b:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/16 v3, 0x13

    if-eq v2, v3, :cond_1

    const/16 v3, 0x14

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Ldi0;->h0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lzh0$a1;->q:Ljava/util/List;

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ldi0;->h0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lzh0$a1;->p:Ljava/util/List;

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ldi0;->h0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lzh0$a1;->o:Ljava/util/List;

    goto :goto_1

    :cond_3
    invoke-static {v1}, Ldi0;->h0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lzh0$a1;->n:Ljava/util/List;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final M0(Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<symbol>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_0

    new-instance v0, Lzh0$t0;

    invoke-direct {v0}, Lzh0$t0;-><init>()V

    iget-object v1, p0, Ldi0;->a:Lzh0;

    iput-object v1, v0, Lzh0$n0;->a:Lzh0;

    iget-object v1, p0, Ldi0;->b:Lzh0$j0;

    iput-object v1, v0, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v0, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->t(Lzh0$g0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->P(Lzh0$r0;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v0}, Lzh0$j0;->f(Lzh0$n0;)V

    iput-object v0, p0, Ldi0;->b:Lzh0$j0;

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final N(Lzh0$n;Lorg/xml/sax/Attributes;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v1

    sget-object v2, Ldi0$b;->A0:Ldi0$b;

    if-ne v1, v2, :cond_0

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ldi0;->y0(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-interface {p1, v1}, Lzh0$n;->i(Landroid/graphics/Matrix;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final N0(Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<text>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_0

    new-instance v0, Lzh0$w0;

    invoke-direct {v0}, Lzh0$w0;-><init>()V

    iget-object v1, p0, Ldi0;->a:Lzh0;

    iput-object v1, v0, Lzh0$n0;->a:Lzh0;

    iget-object v1, p0, Ldi0;->b:Lzh0$j0;

    iput-object v1, v0, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v0, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->N(Lzh0$n;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->t(Lzh0$g0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->M(Lzh0$a1;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v0}, Lzh0$j0;->f(Lzh0$n0;)V

    iput-object v0, p0, Ldi0;->b:Lzh0$j0;

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final O(Lzh0$e1;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_8

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldi0$a;->b:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/1999/xlink"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iput-object v1, p1, Lzh0$e1;->o:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$e1;->s:Lzh0$p;

    invoke-virtual {v1}, Lzh0$p;->i()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid <use> element. height cannot be negative"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$e1;->r:Lzh0$p;

    invoke-virtual {v1}, Lzh0$p;->i()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid <use> element. width cannot be negative"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$e1;->q:Lzh0$p;

    goto :goto_1

    :cond_7
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$e1;->p:Lzh0$p;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public final O0(Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<textPath>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_1

    new-instance v0, Lzh0$z0;

    invoke-direct {v0}, Lzh0$z0;-><init>()V

    iget-object v1, p0, Ldi0;->a:Lzh0;

    iput-object v1, v0, Lzh0$n0;->a:Lzh0;

    iget-object v1, p0, Ldi0;->b:Lzh0$j0;

    iput-object v1, v0, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v0, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->t(Lzh0$g0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->L(Lzh0$z0;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v0}, Lzh0$j0;->f(Lzh0$n0;)V

    iput-object v0, p0, Ldi0;->b:Lzh0$j0;

    iget-object p1, v0, Lzh0$n0;->b:Lzh0$j0;

    instance-of v1, p1, Lzh0$b1;

    if-eqz v1, :cond_0

    check-cast p1, Lzh0$b1;

    goto :goto_0

    :cond_0
    check-cast p1, Lzh0$x0;

    invoke-interface {p1}, Lzh0$x0;->c()Lzh0$b1;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lzh0$z0;->l(Lzh0$b1;)V

    return-void

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final P(Lzh0$r0;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldi0$a;->b:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    const/16 v3, 0x56

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Ldi0;->A0(Ljava/lang/String;)Lzh0$b;

    move-result-object v1

    iput-object v1, p1, Lzh0$r0;->o:Lzh0$b;

    goto :goto_1

    :cond_1
    invoke-static {p1, v1}, Ldi0;->n0(Lzh0$p0;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final P0(Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<tref>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_2

    instance-of v0, v0, Lzh0$y0;

    if-eqz v0, :cond_1

    new-instance v0, Lzh0$u0;

    invoke-direct {v0}, Lzh0$u0;-><init>()V

    iget-object v1, p0, Ldi0;->a:Lzh0;

    iput-object v1, v0, Lzh0$n0;->a:Lzh0;

    iget-object v1, p0, Ldi0;->b:Lzh0$j0;

    iput-object v1, v0, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v0, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->t(Lzh0$g0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->K(Lzh0$u0;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v0}, Lzh0$j0;->f(Lzh0$n0;)V

    iget-object p1, v0, Lzh0$n0;->b:Lzh0$j0;

    instance-of v1, p1, Lzh0$b1;

    if-eqz v1, :cond_0

    check-cast p1, Lzh0$b1;

    goto :goto_0

    :cond_0
    check-cast p1, Lzh0$x0;

    invoke-interface {p1}, Lzh0$x0;->c()Lzh0$b1;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lzh0$u0;->l(Lzh0$b1;)V

    return-void

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. <tref> elements are only valid inside <text> or <tspan> elements."

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final Q(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Luh0;

    sget-object v1, Luh0$f;->j:Luh0$f;

    invoke-direct {v0, v1}, Luh0;-><init>(Luh0$f;)V

    iget-object v1, p0, Ldi0;->a:Lzh0;

    invoke-virtual {v0, p1}, Luh0;->d(Ljava/lang/String;)Luh0$h;

    move-result-object p1

    invoke-virtual {v1, p1}, Lzh0;->a(Luh0$h;)V

    return-void
.end method

.method public final Q0(Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<tspan>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_2

    instance-of v0, v0, Lzh0$y0;

    if-eqz v0, :cond_1

    new-instance v0, Lzh0$v0;

    invoke-direct {v0}, Lzh0$v0;-><init>()V

    iget-object v1, p0, Ldi0;->a:Lzh0;

    iput-object v1, v0, Lzh0$n0;->a:Lzh0;

    iget-object v1, p0, Ldi0;->b:Lzh0$j0;

    iput-object v1, v0, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v0, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->t(Lzh0$g0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->M(Lzh0$a1;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v0}, Lzh0$j0;->f(Lzh0$n0;)V

    iput-object v0, p0, Ldi0;->b:Lzh0$j0;

    iget-object p1, v0, Lzh0$n0;->b:Lzh0$j0;

    instance-of v1, p1, Lzh0$b1;

    if-eqz v1, :cond_0

    check-cast p1, Lzh0$b1;

    goto :goto_0

    :cond_0
    check-cast p1, Lzh0$x0;

    invoke-interface {p1}, Lzh0$x0;->c()Lzh0$b1;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lzh0$v0;->l(Lzh0$b1;)V

    return-void

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. <tspan> elements are only valid inside <text> or other <tspan> elements."

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final R0(Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<use>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_0

    new-instance v0, Lzh0$e1;

    invoke-direct {v0}, Lzh0$e1;-><init>()V

    iget-object v1, p0, Ldi0;->a:Lzh0;

    iput-object v1, v0, Lzh0$n0;->a:Lzh0;

    iget-object v1, p0, Ldi0;->b:Lzh0$j0;

    iput-object v1, v0, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v0, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->N(Lzh0$n;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->t(Lzh0$g0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->O(Lzh0$e1;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v0}, Lzh0$j0;->f(Lzh0$n0;)V

    iput-object v0, p0, Ldi0;->b:Lzh0$j0;

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final S0(Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<view>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_0

    new-instance v0, Lzh0$f1;

    invoke-direct {v0}, Lzh0$f1;-><init>()V

    iget-object v1, p0, Ldi0;->a:Lzh0;

    iput-object v1, v0, Lzh0$n0;->a:Lzh0;

    iget-object v1, p0, Ldi0;->b:Lzh0$j0;

    iput-object v1, v0, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v0, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->t(Lzh0$g0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->P(Lzh0$r0;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v0}, Lzh0$j0;->f(Lzh0$n0;)V

    iput-object v0, p0, Ldi0;->b:Lzh0$j0;

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final T0(Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<switch>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_0

    new-instance v0, Lzh0$s0;

    invoke-direct {v0}, Lzh0$s0;-><init>()V

    iget-object v1, p0, Ldi0;->a:Lzh0;

    iput-object v1, v0, Lzh0$n0;->a:Lzh0;

    iget-object v1, p0, Ldi0;->b:Lzh0$j0;

    iput-object v1, v0, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v0, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->N(Lzh0$n;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->t(Lzh0$g0;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v0}, Lzh0$j0;->f(Lzh0$n0;)V

    iput-object v0, p0, Ldi0;->b:Lzh0$j0;

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lorg/xml/sax/Attributes;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<circle>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_0

    new-instance v1, Lzh0$d;

    invoke-direct {v1}, Lzh0$d;-><init>()V

    iget-object v2, p0, Ldi0;->a:Lzh0;

    iput-object v2, v1, Lzh0$n0;->a:Lzh0;

    iput-object v0, v1, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v1, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->N(Lzh0$n;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->t(Lzh0$g0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->r(Lzh0$d;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v1}, Lzh0$j0;->f(Lzh0$n0;)V

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<clipPath>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_0

    new-instance v0, Lzh0$e;

    invoke-direct {v0}, Lzh0$e;-><init>()V

    iget-object v1, p0, Ldi0;->a:Lzh0;

    iput-object v1, v0, Lzh0$n0;->a:Lzh0;

    iget-object v1, p0, Ldi0;->b:Lzh0$j0;

    iput-object v1, v0, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v0, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->N(Lzh0$n;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->t(Lzh0$g0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->s(Lzh0$e;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v0}, Lzh0$j0;->f(Lzh0$n0;)V

    iput-object v0, p0, Ldi0;->b:Lzh0$j0;

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public characters([CII)V
    .locals 3

    iget-boolean v0, p0, Ldi0;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Ldi0;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldi0;->g:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Ldi0;->g:Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Ldi0;->g:Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void

    :cond_2
    iget-boolean v0, p0, Ldi0;->h:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldi0;->i:Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Ldi0;->i:Ljava/lang/StringBuilder;

    :cond_3
    iget-object v0, p0, Ldi0;->i:Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    instance-of v1, v0, Lzh0$y0;

    if-eqz v1, :cond_7

    check-cast v0, Lzh0$h0;

    iget-object v1, v0, Lzh0$h0;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget-object v0, v0, Lzh0$h0;->i:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzh0$n0;

    :goto_1
    instance-of v1, v0, Lzh0$c1;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Lzh0$c1;

    iget-object v2, v0, Lzh0$c1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lzh0$c1;->c:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    check-cast v0, Lzh0$h0;

    new-instance v1, Lzh0$c1;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v1, v2}, Lzh0$c1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lzh0$h0;->f(Lzh0$n0;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public comment([CII)V
    .locals 1

    iget-boolean v0, p0, Ldi0;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Ldi0;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldi0;->i:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Ldi0;->i:Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Ldi0;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public final d(Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<defs>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_0

    new-instance v0, Lzh0$h;

    invoke-direct {v0}, Lzh0$h;-><init>()V

    iget-object v1, p0, Ldi0;->a:Lzh0;

    iput-object v1, v0, Lzh0$n0;->a:Lzh0;

    iget-object v1, p0, Ldi0;->b:Lzh0$j0;

    iput-object v1, v0, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v0, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->N(Lzh0$n;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v0}, Lzh0$j0;->f(Lzh0$n0;)V

    iput-object v0, p0, Ldi0;->b:Lzh0$j0;

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Lorg/xml/sax/Attributes;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<ellipse>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_0

    new-instance v1, Lzh0$i;

    invoke-direct {v1}, Lzh0$i;-><init>()V

    iget-object v2, p0, Ldi0;->a:Lzh0;

    iput-object v2, v1, Lzh0$n0;->a:Lzh0;

    iput-object v0, v1, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v1, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->N(Lzh0$n;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->t(Lzh0$g0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->v(Lzh0$i;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v1}, Lzh0$j0;->f(Lzh0$n0;)V

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean p3, p0, Ldi0;->c:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget p3, p0, Ldi0;->d:I

    sub-int/2addr p3, v0

    iput p3, p0, Ldi0;->d:I

    if-nez p3, :cond_0

    iput-boolean v1, p0, Ldi0;->c:Z

    return-void

    :cond_0
    const-string p3, "http://www.w3.org/2000/svg"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, ""

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object p1, Ldi0$a;->a:[I

    invoke-static {p2}, Ldi0$c;->a(Ljava/lang/String;)Ldi0$c;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v0, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x4

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_4

    const/16 p2, 0xd

    if-eq p1, p2, :cond_4

    const/16 p2, 0xe

    if-eq p1, p2, :cond_4

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object p1, p0, Ldi0;->i:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    iput-boolean v1, p0, Ldi0;->h:Z

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldi0;->Q(Ljava/lang/String;)V

    iget-object p1, p0, Ldi0;->i:Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :pswitch_1
    iput-boolean v1, p0, Ldi0;->e:Z

    iget-object p1, p0, Ldi0;->f:Ldi0$c;

    sget-object p2, Ldi0$c;->C:Ldi0$c;

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Ldi0;->a:Lzh0;

    iget-object p2, p0, Ldi0;->g:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lzh0;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object p2, Ldi0$c;->g:Ldi0$c;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Ldi0;->a:Lzh0;

    iget-object p2, p0, Ldi0;->g:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lzh0;->n(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object p1, p0, Ldi0;->g:Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    :pswitch_2
    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    check-cast p1, Lzh0$n0;

    iget-object p1, p1, Lzh0$n0;->b:Lzh0$j0;

    iput-object p1, p0, Ldi0;->b:Lzh0$j0;

    :cond_5
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final f0(Ljava/lang/String;)Ljava/lang/Float;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x25

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-static {p1, v4, v0}, Ldi0;->Y(Ljava/lang/String;II)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz v2, :cond_1

    div-float/2addr v0, v1

    :cond_1
    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-gez v3, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid offset value in <stop>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_4
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid offset value in <stop> (empty string)"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<g>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_0

    new-instance v0, Lzh0$m;

    invoke-direct {v0}, Lzh0$m;-><init>()V

    iget-object v1, p0, Ldi0;->a:Lzh0;

    iput-object v1, v0, Lzh0$n0;->a:Lzh0;

    iget-object v1, p0, Ldi0;->b:Lzh0$j0;

    iput-object v1, v0, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v0, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->N(Lzh0$n;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->t(Lzh0$g0;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v0}, Lzh0$j0;->f(Lzh0$n0;)V

    iput-object v0, p0, Ldi0;->b:Lzh0$j0;

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<image>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_0

    new-instance v0, Lzh0$o;

    invoke-direct {v0}, Lzh0$o;-><init>()V

    iget-object v1, p0, Ldi0;->a:Lzh0;

    iput-object v1, v0, Lzh0$n0;->a:Lzh0;

    iget-object v1, p0, Ldi0;->b:Lzh0$j0;

    iput-object v1, v0, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v0, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->N(Lzh0$n;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->t(Lzh0$g0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->x(Lzh0$o;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v0}, Lzh0$j0;->f(Lzh0$n0;)V

    iput-object v0, p0, Ldi0;->b:Lzh0$j0;

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m(Lorg/xml/sax/Attributes;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<line>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_0

    new-instance v1, Lzh0$q;

    invoke-direct {v1}, Lzh0$q;-><init>()V

    iget-object v2, p0, Ldi0;->a:Lzh0;

    iput-object v2, v1, Lzh0$n0;->a:Lzh0;

    iput-object v0, v1, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v1, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->N(Lzh0$n;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->t(Lzh0$g0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v1, p1}, Ldi0;->y(Lzh0$q;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v1}, Lzh0$j0;->f(Lzh0$n0;)V

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n(Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<linearGradiant>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_0

    new-instance v0, Lzh0$m0;

    invoke-direct {v0}, Lzh0$m0;-><init>()V

    iget-object v1, p0, Ldi0;->a:Lzh0;

    iput-object v1, v0, Lzh0$n0;->a:Lzh0;

    iget-object v1, p0, Ldi0;->b:Lzh0$j0;

    iput-object v1, v0, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v0, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->w(Lzh0$j;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->z(Lzh0$m0;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v0}, Lzh0$j0;->f(Lzh0$n0;)V

    iput-object v0, p0, Ldi0;->b:Lzh0$j0;

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o(Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<marker>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_0

    new-instance v0, Lzh0$r;

    invoke-direct {v0}, Lzh0$r;-><init>()V

    iget-object v1, p0, Ldi0;->a:Lzh0;

    iput-object v1, v0, Lzh0$n0;->a:Lzh0;

    iget-object v1, p0, Ldi0;->b:Lzh0$j0;

    iput-object v1, v0, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v0, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->t(Lzh0$g0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->P(Lzh0$r0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->A(Lzh0$r;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v0}, Lzh0$j0;->f(Lzh0$n0;)V

    iput-object v0, p0, Ldi0;->b:Lzh0$j0;

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p(Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<mask>"

    invoke-virtual {p0, v1, v0}, Ldi0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ldi0;->b:Lzh0$j0;

    if-eqz v0, :cond_0

    new-instance v0, Lzh0$s;

    invoke-direct {v0}, Lzh0$s;-><init>()V

    iget-object v1, p0, Ldi0;->a:Lzh0;

    iput-object v1, v0, Lzh0$n0;->a:Lzh0;

    iget-object v1, p0, Ldi0;->b:Lzh0$j0;

    iput-object v1, v0, Lzh0$n0;->b:Lzh0$j0;

    invoke-virtual {p0, v0, p1}, Ldi0;->u(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->J(Lzh0$l0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->t(Lzh0$g0;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, v0, p1}, Ldi0;->B(Lzh0$s;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Ldi0;->b:Lzh0$j0;

    invoke-interface {p1, v0}, Lzh0$j0;->f(Lzh0$n0;)V

    iput-object v0, p0, Ldi0;->b:Lzh0$j0;

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid document. Root element must be <svg>"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(Ljava/io/InputStream;)Lzh0;
    .locals 6

    const-string v0, "Exception thrown closing input stream"

    const-string v1, "SVGParser"

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v2

    :cond_0
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    const v3, 0x8b1f

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    :catch_0
    :cond_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    invoke-interface {v2, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    const-string v3, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {v2, v3, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Ldi0;->a:Lzh0;

    return-object p1

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_3
    new-instance v3, Lci0;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SVG parse error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lci0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v2

    new-instance v3, Lci0;

    const-string v4, "XML Parser problem"

    invoke-direct {v3, v4, v2}, Lci0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_4
    move-exception v2

    new-instance v3, Lci0;

    const-string v4, "File error"

    invoke-direct {v3, v4, v2}, Lci0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_2

    :catch_5
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    throw v2
.end method

.method public final r(Lzh0$d;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldi0$a;->b:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$d;->q:Lzh0$p;

    invoke-virtual {v1}, Lzh0$p;->i()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid <circle> element. r cannot be negative"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$d;->p:Lzh0$p;

    goto :goto_1

    :pswitch_2
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$d;->o:Lzh0$p;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final s(Lzh0$e;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldi0$a;->b:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x26

    if-eq v2, v3, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, "objectBoundingBox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    iput-object v1, p1, Lzh0$e;->o:Ljava/lang/Boolean;

    goto :goto_2

    :cond_1
    const-string v2, "userSpaceOnUse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid value for attribute clipPathUnits"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method public startDocument()V
    .locals 1

    new-instance v0, Lzh0;

    invoke-direct {v0}, Lzh0;-><init>()V

    iput-object v0, p0, Ldi0;->a:Lzh0;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    iget-boolean p3, p0, Ldi0;->c:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    iget p1, p0, Ldi0;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Ldi0;->d:I

    return-void

    :cond_0
    const-string p3, "http://www.w3.org/2000/svg"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, ""

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {p2}, Ldi0$c;->a(Ljava/lang/String;)Ldi0$c;

    move-result-object p1

    sget-object p2, Ldi0$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    packed-switch p2, :pswitch_data_0

    iput-boolean v0, p0, Ldi0;->c:Z

    iput v0, p0, Ldi0;->d:I

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0, p4}, Ldi0;->I0(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0, p4}, Ldi0;->K0(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0, p4}, Ldi0;->p(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0, p4}, Ldi0;->S0(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0, p4}, Ldi0;->h(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0, p4}, Ldi0;->C0(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0, p4}, Ldi0;->O0(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0, p4}, Ldi0;->b(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :pswitch_8
    iput-boolean v0, p0, Ldi0;->e:Z

    iput-object p1, p0, Ldi0;->f:Ldi0$c;

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0, p4}, Ldi0;->J0(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0, p4}, Ldi0;->G0(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0, p4}, Ldi0;->n(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0, p4}, Ldi0;->o(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0, p4}, Ldi0;->M0(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0, p4}, Ldi0;->T0(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :pswitch_f
    invoke-virtual {p0, p4}, Ldi0;->P0(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :pswitch_10
    invoke-virtual {p0, p4}, Ldi0;->Q0(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :pswitch_11
    invoke-virtual {p0, p4}, Ldi0;->N0(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :pswitch_12
    invoke-virtual {p0, p4}, Ldi0;->D0(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :pswitch_13
    invoke-virtual {p0, p4}, Ldi0;->E0(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :pswitch_14
    invoke-virtual {p0, p4}, Ldi0;->m(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :pswitch_15
    invoke-virtual {p0, p4}, Ldi0;->e(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :pswitch_16
    invoke-virtual {p0, p4}, Ldi0;->a(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :pswitch_17
    invoke-virtual {p0, p4}, Ldi0;->H0(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :pswitch_18
    invoke-virtual {p0, p4}, Ldi0;->B0(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :pswitch_19
    invoke-virtual {p0, p4}, Ldi0;->R0(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :pswitch_1a
    invoke-virtual {p0, p4}, Ldi0;->d(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :pswitch_1b
    invoke-virtual {p0, p4}, Ldi0;->g(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :pswitch_1c
    invoke-virtual {p0, p4}, Ldi0;->L0(Lorg/xml/sax/Attributes;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t(Lzh0$g0;Lorg/xml/sax/Attributes;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ldi0$a;->b:[I

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {v2}, Ldi0;->a0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    if-eqz v2, :cond_0

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_0
    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    :goto_1
    invoke-interface {p1, v3}, Lzh0$g0;->b(Ljava/util/Set;)V

    goto :goto_2

    :pswitch_1
    invoke-static {v2}, Ldi0;->p0(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Lzh0$g0;->g(Ljava/util/Set;)V

    goto :goto_2

    :pswitch_2
    invoke-static {v2}, Ldi0;->u0(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Lzh0$g0;->e(Ljava/util/Set;)V

    goto :goto_2

    :pswitch_3
    invoke-interface {p1, v2}, Lzh0$g0;->h(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    invoke-static {v2}, Ldi0;->o0(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Lzh0$g0;->d(Ljava/util/Set;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final u(Lzh0$l0;Lorg/xml/sax/Attributes;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "xml:id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, "xml:space"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, "default"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    iput-object p2, p1, Lzh0$l0;->d:Ljava/lang/Boolean;

    goto :goto_3

    :cond_1
    const-string v0, "preserve"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value for \"xml:space\" attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lzh0$l0;->c:Ljava/lang/String;

    :cond_5
    :goto_3
    return-void
.end method

.method public final v(Lzh0$i;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldi0$a;->b:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$i;->p:Lzh0$p;

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$i;->o:Lzh0$p;

    goto :goto_1

    :pswitch_2
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$i;->r:Lzh0$p;

    invoke-virtual {v1}, Lzh0$p;->i()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid <ellipse> element. ry cannot be negative"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$i;->q:Lzh0$p;

    invoke-virtual {v1}, Lzh0$p;->i()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid <ellipse> element. rx cannot be negative"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final w(Lzh0$j;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldi0$a;->b:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    :try_start_0
    invoke-static {v1}, Lzh0$k;->valueOf(Ljava/lang/String;)Lzh0$k;

    move-result-object v2

    iput-object v2, p1, Lzh0$j;->k:Lzh0$k;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid spreadMethod attribute. \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" is not a valid value."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-virtual {p0, v1}, Ldi0;->y0(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, p1, Lzh0$j;->j:Landroid/graphics/Matrix;

    goto :goto_2

    :pswitch_2
    const-string v2, "objectBoundingBox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    iput-object v1, p1, Lzh0$j;->i:Ljava/lang/Boolean;

    goto :goto_2

    :cond_0
    const-string v2, "userSpaceOnUse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid value for attribute gradientUnits"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/1999/xlink"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    iput-object v1, p1, Lzh0$j;->l:Ljava/lang/String;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final x(Lzh0$o;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_9

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldi0$a;->b:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v1}, Ldi0;->n0(Lzh0$p0;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/1999/xlink"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iput-object v1, p1, Lzh0$o;->o:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$o;->s:Lzh0$p;

    invoke-virtual {v1}, Lzh0$p;->i()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid <use> element. height cannot be negative"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$o;->r:Lzh0$p;

    invoke-virtual {v1}, Lzh0$p;->i()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "Invalid <use> element. width cannot be negative"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$o;->q:Lzh0$p;

    goto :goto_1

    :cond_8
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$o;->p:Lzh0$p;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method public final y(Lzh0$q;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldi0$a;->b:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$q;->r:Lzh0$p;

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$q;->q:Lzh0$p;

    goto :goto_1

    :pswitch_2
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$q;->p:Lzh0$p;

    goto :goto_1

    :pswitch_3
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$q;->o:Lzh0$p;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final y0(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 12

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    new-instance v1, Ldi0$d;

    invoke-direct {v1, p1}, Ldi0$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ldi0$d;->x()V

    :goto_0
    invoke-virtual {v1}, Ldi0$d;->g()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v1}, Ldi0$d;->o()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    const-string v3, "matrix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x29

    const-string v6, "Invalid transform list: "

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ldi0$d;->x()V

    invoke-virtual {v1}, Ldi0$d;->m()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1}, Ldi0$d;->w()Z

    invoke-virtual {v1}, Ldi0$d;->m()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1}, Ldi0$d;->w()Z

    invoke-virtual {v1}, Ldi0$d;->m()Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v1}, Ldi0$d;->w()Z

    invoke-virtual {v1}, Ldi0$d;->m()Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v1}, Ldi0$d;->w()Z

    invoke-virtual {v1}, Ldi0$d;->m()Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v1}, Ldi0$d;->w()Z

    invoke-virtual {v1}, Ldi0$d;->m()Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v1}, Ldi0$d;->x()V

    if-eqz v10, :cond_0

    invoke-virtual {v1, v5}, Ldi0$d;->e(C)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/16 v6, 0x9

    new-array v6, v6, [F

    const/4 v11, 0x0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v6, v11

    const/4 v2, 0x1

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v6, v2

    const/4 v2, 0x2

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v6, v2

    const/4 v2, 0x3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v6, v2

    const/4 v2, 0x4

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v6, v2

    const/4 v2, 0x5

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v6, v2

    const/4 v2, 0x6

    aput v4, v6, v2

    const/4 v2, 0x7

    aput v4, v6, v2

    const/16 v2, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v6, v2

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto/16 :goto_1

    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v3, "translate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ldi0$d;->x()V

    invoke-virtual {v1}, Ldi0$d;->m()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1}, Ldi0$d;->u()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1}, Ldi0$d;->x()V

    if-eqz v2, :cond_3

    invoke-virtual {v1, v5}, Ldi0$d;->e(C)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    if-nez v3, :cond_2

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto/16 :goto_1

    :cond_3
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v3, "scale"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Ldi0$d;->x()V

    invoke-virtual {v1}, Ldi0$d;->m()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1}, Ldi0$d;->u()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1}, Ldi0$d;->x()V

    if-eqz v2, :cond_6

    invoke-virtual {v1, v5}, Ldi0$d;->e(C)Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_1

    :cond_6
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string v3, "rotate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v1}, Ldi0$d;->x()V

    invoke-virtual {v1}, Ldi0$d;->m()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1}, Ldi0$d;->u()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1}, Ldi0$d;->u()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1}, Ldi0$d;->x()V

    if-eqz v2, :cond_a

    invoke-virtual {v1, v5}, Ldi0$d;->e(C)Z

    move-result v5

    if-eqz v5, :cond_a

    if-nez v3, :cond_8

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    goto/16 :goto_1

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto/16 :goto_1

    :cond_9
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const-string v3, "skewX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v1}, Ldi0$d;->x()V

    invoke-virtual {v1}, Ldi0$d;->m()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1}, Ldi0$d;->x()V

    if-eqz v2, :cond_c

    invoke-virtual {v1, v5}, Ldi0$d;->e(C)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->preSkew(FF)Z

    goto :goto_1

    :cond_c
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const-string v3, "skewY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v1}, Ldi0$d;->x()V

    invoke-virtual {v1}, Ldi0$d;->m()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1}, Ldi0$d;->x()V

    if-eqz v2, :cond_e

    invoke-virtual {v1, v5}, Ldi0$d;->e(C)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Matrix;->preSkew(FF)Z

    goto :goto_1

    :cond_e
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-nez v2, :cond_11

    :goto_1
    invoke-virtual {v1}, Ldi0$d;->g()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_2

    :cond_10
    invoke-virtual {v1}, Ldi0$d;->w()Z

    goto/16 :goto_0

    :cond_11
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid transform list fn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad transform function encountered in transform list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_2
    return-object v0
.end method

.method public final z(Lzh0$m0;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldi0$a;->b:[I

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldi0$b;->a(Ljava/lang/String;)Ldi0$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$m0;->p:Lzh0$p;

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$m0;->o:Lzh0$p;

    goto :goto_1

    :pswitch_2
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$m0;->n:Lzh0$p;

    goto :goto_1

    :pswitch_3
    invoke-static {v1}, Ldi0;->g0(Ljava/lang/String;)Lzh0$p;

    move-result-object v1

    iput-object v1, p1, Lzh0$m0;->m:Lzh0$p;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
