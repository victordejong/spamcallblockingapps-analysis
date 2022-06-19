.class public final Lcom/google/i18n/phonenumbers/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final l:Lcom/google/i18n/phonenumbers/j$b;

.field private static final o:Ljava/util/regex/Pattern;

.field private static final p:Ljava/util/regex/Pattern;

.field private static final q:Ljava/util/regex/Pattern;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/StringBuilder;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/StringBuilder;

.field private e:Ljava/lang/StringBuilder;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private final j:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

.field private k:Ljava/lang/String;

.field private m:Lcom/google/i18n/phonenumbers/j$b;

.field private n:Lcom/google/i18n/phonenumbers/j$b;

.field private r:I

.field private s:I

.field private t:I

.field private u:Ljava/lang/StringBuilder;

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/StringBuilder;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/i18n/phonenumbers/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/google/i18n/phonenumbers/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    invoke-static {}, Lcom/google/i18n/phonenumbers/j$b;->a()Lcom/google/i18n/phonenumbers/j$b$a;

    move-result-object v0

    const-string v1, "<ignored>"

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/j$b$a;->c(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b$a;

    move-result-object v0

    const-string v1, "NA"

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/j$b$a;->d(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b$a;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/a;->l:Lcom/google/i18n/phonenumbers/j$b;

    const-string v0, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*(\\$\\d[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*)+"

    .line 75
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/a;->o:Ljava/util/regex/Pattern;

    const-string v0, "[- ]"

    .line 79
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/a;->p:Ljava/util/regex/Pattern;

    const-string v0, "\u2008"

    .line 89
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/a;->q:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/a;->a:Ljava/lang/String;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/a;->b:Ljava/lang/StringBuilder;

    .line 45
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/a;->c:Ljava/lang/String;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/a;->d:Ljava/lang/StringBuilder;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/a;->e:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/a;->f:Z

    const/4 v1, 0x0

    .line 52
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/a;->g:Z

    .line 56
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/a;->h:Z

    .line 57
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/a;->i:Z

    .line 58
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    iput-object v2, p0, Lcom/google/i18n/phonenumbers/a;->j:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 90
    iput v1, p0, Lcom/google/i18n/phonenumbers/a;->r:I

    .line 93
    iput v1, p0, Lcom/google/i18n/phonenumbers/a;->s:I

    .line 96
    iput v1, p0, Lcom/google/i18n/phonenumbers/a;->t:I

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/google/i18n/phonenumbers/a;->u:Ljava/lang/StringBuilder;

    .line 101
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/a;->v:Z

    .line 104
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/a;->w:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/a;->y:Ljava/util/List;

    .line 109
    new-instance v0, Lcom/google/i18n/phonenumbers/a/c;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/google/i18n/phonenumbers/a/c;-><init>(I)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/a;->z:Lcom/google/i18n/phonenumbers/a/c;

    .line 118
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/a;->k:Ljava/lang/String;

    .line 119
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/a;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/a;->n:Lcom/google/i18n/phonenumbers/j$b;

    .line 120
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/a;->m:Lcom/google/i18n/phonenumbers/j$b;

    return-void
.end method

.method private a(CZ)C
    .locals 0

    const/16 p2, 0x2b

    if-ne p1, p2, :cond_0

    .line 634
    iget-object p2, p0, Lcom/google/i18n/phonenumbers/a;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 p2, 0xa

    .line 637
    invoke-static {p1, p2}, Ljava/lang/Character;->digit(CI)I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result p1

    .line 638
    iget-object p2, p0, Lcom/google/i18n/phonenumbers/a;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 639
    iget-object p2, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return p1
.end method

.method private a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->j:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result p1

    .line 127
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->j:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object p1

    .line 128
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->j:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 134
    :cond_0
    sget-object p1, Lcom/google/i18n/phonenumbers/a;->l:Lcom/google/i18n/phonenumbers/j$b;

    return-object p1
.end method

.method private b(C)Ljava/lang/String;
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/a;->c(C)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 313
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/a;->f:Z

    .line 314
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/a;->g:Z

    goto :goto_0

    .line 316
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/google/i18n/phonenumbers/a;->a(CZ)C

    move-result p1

    .line 318
    :goto_0
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/a;->f:Z

    if-nez v0, :cond_4

    .line 322
    iget-boolean p1, p0, Lcom/google/i18n/phonenumbers/a;->g:Z

    if-eqz p1, :cond_1

    .line 323
    iget-object p1, p0, Lcom/google/i18n/phonenumbers/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 324
    :cond_1
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/a;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 325
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/a;->k()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 326
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/a;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 328
    :cond_2
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/a;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 332
    iget-object p1, p0, Lcom/google/i18n/phonenumbers/a;->u:Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/a;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 335
    :cond_3
    iget-object p1, p0, Lcom/google/i18n/phonenumbers/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 340
    :cond_4
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_d

    if-eq v0, v1, :cond_d

    const/4 v3, 0x2

    if-eq v0, v3, :cond_d

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    goto :goto_1

    .line 346
    :cond_5
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/a;->j()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 347
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/a;->i:Z

    .line 354
    :goto_1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/a;->i:Z

    if-eqz v0, :cond_7

    .line 355
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/a;->k()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 356
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/a;->i:Z

    .line 358
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->u:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 360
    :cond_7
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 361
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/a;->d(C)Ljava/lang/String;

    move-result-object p1

    .line 364
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    return-object v0

    .line 368
    :cond_8
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/a;->c(Ljava/lang/String;)V

    .line 369
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/a;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 370
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/a;->g()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 372
    :cond_9
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/a;->f:Z

    if-eqz v0, :cond_a

    .line 373
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 374
    :cond_a
    iget-object p1, p0, Lcom/google/i18n/phonenumbers/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 376
    :cond_b
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/a;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 349
    :cond_c
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/a;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/a;->w:Ljava/lang/String;

    .line 350
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/a;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 344
    :cond_d
    iget-object p1, p0, Lcom/google/i18n/phonenumbers/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .line 167
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->w:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->n:Lcom/google/i18n/phonenumbers/j$b;

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/j$b;->b()I

    move-result v0

    if-lez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->n:Lcom/google/i18n/phonenumbers/j$b;

    .line 3780
    iget-object v0, v0, Lcom/google/i18n/phonenumbers/j$b;->z:Ljava/util/List;

    goto :goto_1

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->n:Lcom/google/i18n/phonenumbers/j$b;

    .line 4756
    iget-object v0, v0, Lcom/google/i18n/phonenumbers/j$b;->y:Ljava/util/List;

    .line 172
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/i18n/phonenumbers/j$a;

    .line 175
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/a;->w:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 5123
    iget-object v2, v1, Lcom/google/i18n/phonenumbers/j$a;->c:Ljava/lang/String;

    .line 176
    invoke-static {v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5141
    iget-boolean v2, v1, Lcom/google/i18n/phonenumbers/j$a;->d:Z

    if-nez v2, :cond_3

    .line 5152
    iget-boolean v2, v1, Lcom/google/i18n/phonenumbers/j$a;->e:Z

    if-eqz v2, :cond_2

    .line 185
    :cond_3
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/a;->w:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/google/i18n/phonenumbers/a;->h:Z

    if-nez v2, :cond_4

    .line 6123
    iget-object v2, v1, Lcom/google/i18n/phonenumbers/j$a;->c:Ljava/lang/String;

    .line 187
    invoke-static {v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 6141
    iget-boolean v2, v1, Lcom/google/i18n/phonenumbers/j$a;->d:Z

    if-eqz v2, :cond_2

    .line 194
    :cond_4
    sget-object v2, Lcom/google/i18n/phonenumbers/a;->o:Ljava/util/regex/Pattern;

    .line 7093
    iget-object v3, v1, Lcom/google/i18n/phonenumbers/j$a;->b:Ljava/lang/String;

    .line 194
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/a;->y:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 198
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b()Z
    .locals 9

    .line 141
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 142
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/i18n/phonenumbers/j$a;

    .line 1082
    iget-object v3, v1, Lcom/google/i18n/phonenumbers/j$a;->a:Ljava/lang/String;

    .line 145
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/a;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    .line 2082
    :cond_0
    iget-object v4, v1, Lcom/google/i18n/phonenumbers/j$a;->a:Ljava/lang/String;

    .line 1223
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2093
    iget-object v5, v1, Lcom/google/i18n/phonenumbers/j$a;->b:Ljava/lang/String;

    .line 2238
    iget-object v6, p0, Lcom/google/i18n/phonenumbers/a;->z:Lcom/google/i18n/phonenumbers/a/c;

    invoke-virtual {v6, v4}, Lcom/google/i18n/phonenumbers/a/c;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    const-string v7, "999999999999999"

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 2239
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 2240
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    .line 2243
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    const-string v4, ""

    goto :goto_1

    .line 2247
    :cond_1
    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "9"

    const-string v6, "\u2008"

    .line 2249
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1225
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-lez v5, :cond_2

    .line 1226
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    .line 149
    iput-object v3, p0, Lcom/google/i18n/phonenumbers/a;->c:Ljava/lang/String;

    .line 150
    sget-object v0, Lcom/google/i18n/phonenumbers/a;->p:Ljava/util/regex/Pattern;

    .line 3123
    iget-object v1, v1, Lcom/google/i18n/phonenumbers/j$a;->c:Ljava/lang/String;

    .line 151
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/a;->v:Z

    .line 155
    iput v2, p0, Lcom/google/i18n/phonenumbers/a;->r:I

    return v6

    .line 158
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 161
    :cond_4
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/a;->f:Z

    return v2
.end method

.method private c()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 382
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/a;->f:Z

    const/4 v0, 0x0

    .line 383
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/a;->i:Z

    .line 384
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/a;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 385
    iput v0, p0, Lcom/google/i18n/phonenumbers/a;->r:I

    .line 386
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, ""

    .line 387
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/a;->c:Ljava/lang/String;

    .line 388
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/a;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 5

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 203
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/a;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 204
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/i18n/phonenumbers/j$a;

    .line 206
    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/j$a;->e()I

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/j$a;->e()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 212
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/a;->z:Lcom/google/i18n/phonenumbers/a/c;

    .line 213
    invoke-virtual {v2, v3}, Lcom/google/i18n/phonenumbers/j$a;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-virtual {v4, v2}, Lcom/google/i18n/phonenumbers/a/c;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 214
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 215
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-nez v2, :cond_0

    .line 216
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(C)Z
    .locals 2

    .line 412
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->d:Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 414
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private d(C)Ljava/lang/String;
    .locals 5

    .line 650
    sget-object v0, Lcom/google/i18n/phonenumbers/a;->q:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 651
    iget v1, p0, Lcom/google/i18n/phonenumbers/a;->r:I

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 652
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 653
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    iput p1, p0, Lcom/google/i18n/phonenumbers/a;->r:I

    .line 655
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->b:Ljava/lang/StringBuilder;

    add-int/2addr p1, v2

    invoke-virtual {v0, v3, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 657
    :cond_0
    iget-object p1, p0, Lcom/google/i18n/phonenumbers/a;->y:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 660
    iput-boolean v3, p0, Lcom/google/i18n/phonenumbers/a;->f:Z

    :cond_1
    const-string p1, ""

    .line 662
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/a;->c:Ljava/lang/String;

    .line 663
    iget-object p1, p0, Lcom/google/i18n/phonenumbers/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 473
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->u:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 474
    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/a;->v:Z

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/a;->u:Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    .line 475
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/a;->u:Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 483
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/a;->u:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d()Z
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->w:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/a;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->u:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/a;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 406
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/a;->u:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->w:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private e()Ljava/lang/String;
    .locals 5

    .line 422
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/i18n/phonenumbers/j$a;

    .line 423
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/a;->z:Lcom/google/i18n/phonenumbers/a/c;

    .line 8082
    iget-object v3, v1, Lcom/google/i18n/phonenumbers/j$a;->a:Ljava/lang/String;

    .line 423
    invoke-virtual {v2, v3}, Lcom/google/i18n/phonenumbers/a/c;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 424
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 425
    sget-object v3, Lcom/google/i18n/phonenumbers/a;->p:Ljava/util/regex/Pattern;

    .line 8123
    iget-object v4, v1, Lcom/google/i18n/phonenumbers/j$a;->c:Ljava/lang/String;

    .line 426
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 427
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/i18n/phonenumbers/a;->v:Z

    .line 9093
    iget-object v1, v1, Lcom/google/i18n/phonenumbers/j$a;->b:Ljava/lang/String;

    .line 428
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-direct {p0, v1}, Lcom/google/i18n/phonenumbers/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 437
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/a;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 496
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/a;->b(Ljava/lang/String;)V

    .line 498
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    .line 502
    :cond_0
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/a;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 3

    .line 513
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    const-string v2, ""

    :goto_0
    if-ge v1, v0, :cond_0

    .line 517
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/i18n/phonenumbers/a;->d(C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    :cond_0
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/a;->f:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/google/i18n/phonenumbers/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->u:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()Z
    .locals 5

    .line 534
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->n:Lcom/google/i18n/phonenumbers/j$b;

    .line 9640
    iget v0, v0, Lcom/google/i18n/phonenumbers/j$b;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 534
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v3, 0x31

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method private i()Ljava/lang/String;
    .locals 4

    .line 541
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/a;->h()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->u:Ljava/lang/StringBuilder;

    const/16 v3, 0x31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 544
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/a;->h:Z

    goto :goto_0

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->n:Lcom/google/i18n/phonenumbers/j$b;

    .line 9709
    iget-boolean v0, v0, Lcom/google/i18n/phonenumbers/j$b;->u:Z

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->z:Lcom/google/i18n/phonenumbers/a/c;

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/a;->n:Lcom/google/i18n/phonenumbers/j$b;

    .line 9710
    iget-object v3, v3, Lcom/google/i18n/phonenumbers/j$b;->v:Ljava/lang/String;

    .line 547
    invoke-virtual {v0, v3}, Lcom/google/i18n/phonenumbers/a/c;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 548
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 551
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    if-lez v3, :cond_1

    .line 555
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/a;->h:Z

    .line 556
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 557
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->u:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 560
    :goto_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 561
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private j()Z
    .locals 5

    .line 573
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->z:Lcom/google/i18n/phonenumbers/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\+|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/a;->n:Lcom/google/i18n/phonenumbers/j$b;

    .line 10651
    iget-object v2, v2, Lcom/google/i18n/phonenumbers/j$b;->n:Ljava/lang/String;

    .line 575
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/a/c;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 576
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/a;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 577
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 578
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/a;->h:Z

    .line 579
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 580
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 581
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/a;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/a;->u:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 583
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/a;->u:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/a;->e:Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v4, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 583
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_0

    .line 586
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->u:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return v1

    :cond_1
    return v2
.end method

.method private k()Z
    .locals 4

    .line 601
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 604
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/a;->j:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 609
    :cond_1
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 610
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 611
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->j:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "001"

    .line 612
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 613
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->j:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/a;->n:Lcom/google/i18n/phonenumbers/j$b;

    goto :goto_0

    .line 614
    :cond_2
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 615
    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/a;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/a;->n:Lcom/google/i18n/phonenumbers/j$b;

    .line 617
    :cond_3
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 618
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/a;->u:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, ""

    .line 621
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/a;->w:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a(C)Ljava/lang/String;
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/a;->b(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/a;->a:Ljava/lang/String;

    return-object p1
.end method

.method public final a()V
    .locals 3

    const-string v0, ""

    .line 257
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/a;->a:Ljava/lang/String;

    .line 258
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/a;->d:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 259
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/a;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 260
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 261
    iput v2, p0, Lcom/google/i18n/phonenumbers/a;->r:I

    .line 262
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/a;->c:Ljava/lang/String;

    .line 263
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/a;->u:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 264
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/a;->w:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/a;->f:Z

    .line 267
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/a;->g:Z

    .line 268
    iput v2, p0, Lcom/google/i18n/phonenumbers/a;->t:I

    .line 269
    iput v2, p0, Lcom/google/i18n/phonenumbers/a;->s:I

    .line 270
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/a;->h:Z

    .line 271
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/a;->i:Z

    .line 272
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 273
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/a;->v:Z

    .line 274
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->n:Lcom/google/i18n/phonenumbers/j$b;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/a;->m:Lcom/google/i18n/phonenumbers/j$b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/a;->k:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/a;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/a;->n:Lcom/google/i18n/phonenumbers/j$b;

    :cond_0
    return-void
.end method
