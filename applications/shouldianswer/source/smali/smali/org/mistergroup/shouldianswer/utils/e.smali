.class public final Lorg/mistergroup/shouldianswer/utils/e;
.super Ljava/util/Observable;
.source "CallHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/utils/e$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/utils/e;

.field private static b:Z

.field private static c:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field private static d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field private static e:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field private static f:Ljava/lang/String;

.field private static g:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field private static h:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field private static i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field private static j:Z

.field private static k:Z

.field private static l:Z

.field private static m:I

.field private static n:Ljava/lang/String;

.field private static o:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lorg/mistergroup/shouldianswer/utils/e;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/utils/e;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    const-string v0, ""

    .line 36
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/e;->f:Ljava/lang/String;

    const/4 v1, -0x1

    .line 45
    sput v1, Lorg/mistergroup/shouldianswer/utils/e;->m:I

    .line 383
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/e;->n:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/utils/e;Z)V
    .locals 0

    .line 31
    sput-boolean p1, Lorg/mistergroup/shouldianswer/utils/e;->b:Z

    return-void
.end method

.method private final a(Lorg/mistergroup/shouldianswer/utils/e$a;Lorg/mistergroup/shouldianswer/model/NumberInfo;Ljava/lang/String;)Z
    .locals 5

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallHelper.canProcess source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/e$a;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " number="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/mistergroup/shouldianswer/model/x;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " latestTestedState="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/mistergroup/shouldianswer/utils/e;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " latestTestedNumber="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/mistergroup/shouldianswer/utils/e;->g:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/model/x;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-static {p2}, Lorg/mistergroup/shouldianswer/model/x;->c(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/mistergroup/shouldianswer/utils/e;->g:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p2, v0}, Lorg/mistergroup/shouldianswer/model/x;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/mistergroup/shouldianswer/utils/e;->f:Ljava/lang/String;

    invoke-static {p3, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 134
    :goto_0
    sput-object p2, Lorg/mistergroup/shouldianswer/utils/e;->g:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    .line 135
    sput-object p3, Lorg/mistergroup/shouldianswer/utils/e;->f:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 136
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/e;->c:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {v4, p2}, Lorg/mistergroup/shouldianswer/model/x;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-static {p3, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-static {p3, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 138
    :cond_2
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " CallScreening is enabled! res=false"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return v1

    .line 142
    :cond_3
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " res="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return v0
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/c/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/model/NumberInfo;",
            "J",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 368
    sput-object p1, Lorg/mistergroup/shouldianswer/utils/e;->c:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    .line 369
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/e$a;->b:Lorg/mistergroup/shouldianswer/utils/e$a;

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/mistergroup/shouldianswer/utils/e;->a(Lorg/mistergroup/shouldianswer/utils/e$a;Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final synthetic a(Lorg/mistergroup/shouldianswer/utils/e$a;Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/c/c;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/utils/e$a;",
            "Lorg/mistergroup/shouldianswer/model/NumberInfo;",
            "J",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    instance-of v6, v5, Lorg/mistergroup/shouldianswer/utils/e$c;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Lorg/mistergroup/shouldianswer/utils/e$c;

    iget v7, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->b:I

    const/high16 v8, -0x80000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    iget v5, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->b:I

    sub-int/2addr v5, v8

    iput v5, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v6, Lorg/mistergroup/shouldianswer/utils/e$c;

    invoke-direct {v6, v1, v5}, Lorg/mistergroup/shouldianswer/utils/e$c;-><init>(Lorg/mistergroup/shouldianswer/utils/e;Lkotlin/c/c;)V

    :goto_0
    iget-object v5, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v7

    .line 47
    iget v8, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->b:I

    const-string v9, "java.lang.String.format(format, *args)"

    const/4 v11, 0x2

    const/4 v13, 0x1

    const-string v14, ","

    packed-switch v8, :pswitch_data_0

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :pswitch_0
    iget-boolean v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->m:Z

    iget-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->i:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->h:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->g:Ljava/lang/Object;

    check-cast v3, Lorg/mistergroup/shouldianswer/MyApp;

    iget-wide v7, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->l:J

    iget-object v4, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->f:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v7, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->e:Ljava/lang/Object;

    check-cast v7, Lorg/mistergroup/shouldianswer/utils/e$a;

    iget-object v6, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->d:Ljava/lang/Object;

    check-cast v6, Lorg/mistergroup/shouldianswer/utils/e;

    :try_start_0
    invoke-static {v5}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v2

    move-object v8, v4

    move-object/from16 v19, v3

    move v3, v0

    move-object v0, v5

    move-object/from16 v5, v19

    goto/16 :goto_f

    :pswitch_1
    iget-object v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->h:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->g:Ljava/lang/Object;

    check-cast v3, Lorg/mistergroup/shouldianswer/MyApp;

    iget-wide v8, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->l:J

    iget-object v4, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->f:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v10, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->e:Ljava/lang/Object;

    check-cast v10, Lorg/mistergroup/shouldianswer/utils/e$a;

    iget-object v13, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->d:Ljava/lang/Object;

    check-cast v13, Lorg/mistergroup/shouldianswer/utils/e;

    :try_start_1
    invoke-static {v5}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v11, v8

    goto/16 :goto_e

    :pswitch_2
    iget-object v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->j:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->i:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->h:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->g:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/MyApp;

    iget-wide v8, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->l:J

    iget-object v10, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->f:Ljava/lang/Object;

    check-cast v10, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v13, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->e:Ljava/lang/Object;

    check-cast v13, Lorg/mistergroup/shouldianswer/utils/e$a;

    iget-object v14, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->d:Ljava/lang/Object;

    check-cast v14, Lorg/mistergroup/shouldianswer/utils/e;

    :try_start_2
    invoke-static {v5}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-wide v11, v8

    move-object v8, v10

    move-object v10, v13

    goto/16 :goto_c

    :pswitch_3
    iget-object v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->k:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->j:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/model/ac;

    iget-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->i:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->h:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->g:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/MyApp;

    iget-wide v14, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->l:J

    iget-object v8, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->f:Ljava/lang/Object;

    check-cast v8, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v12, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->e:Ljava/lang/Object;

    check-cast v12, Lorg/mistergroup/shouldianswer/utils/e$a;

    iget-object v10, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->d:Ljava/lang/Object;

    check-cast v10, Lorg/mistergroup/shouldianswer/utils/e;

    :try_start_3
    invoke-static {v5}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v11, v5

    move-wide/from16 v17, v14

    move-object v14, v0

    move-object v0, v3

    goto/16 :goto_a

    :pswitch_4
    iget-object v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->j:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/ac;

    iget-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->i:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->h:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->g:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/MyApp;

    iget-wide v14, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->l:J

    iget-object v8, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->f:Ljava/lang/Object;

    check-cast v8, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v10, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->e:Ljava/lang/Object;

    check-cast v10, Lorg/mistergroup/shouldianswer/utils/e$a;

    iget-object v12, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->d:Ljava/lang/Object;

    check-cast v12, Lorg/mistergroup/shouldianswer/utils/e;

    :try_start_4
    invoke-static {v5}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v11, v0

    move-object v0, v3

    move-object/from16 v19, v5

    move-object v5, v2

    move-object v2, v4

    move-wide v3, v14

    move-object/from16 v14, v19

    move-object/from16 v20, v12

    move-object v12, v10

    move-object/from16 v10, v20

    goto/16 :goto_9

    :pswitch_5
    iget-object v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    iget-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->h:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->g:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/MyApp;

    iget-wide v3, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->l:J

    iget-object v8, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->f:Ljava/lang/Object;

    check-cast v8, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v10, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->e:Ljava/lang/Object;

    check-cast v10, Lorg/mistergroup/shouldianswer/utils/e$a;

    iget-object v12, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->d:Ljava/lang/Object;

    check-cast v12, Lorg/mistergroup/shouldianswer/utils/e;

    :try_start_5
    invoke-static {v5}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v19, v5

    move-object v5, v0

    move-object/from16 v0, v19

    goto/16 :goto_8

    :pswitch_6
    iget-object v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    iget-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->h:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->g:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/MyApp;

    iget-wide v3, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->l:J

    iget-object v8, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->f:Ljava/lang/Object;

    check-cast v8, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v10, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->e:Ljava/lang/Object;

    check-cast v10, Lorg/mistergroup/shouldianswer/utils/e$a;

    iget-object v12, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->d:Ljava/lang/Object;

    check-cast v12, Lorg/mistergroup/shouldianswer/utils/e;

    :try_start_6
    invoke-static {v5}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object/from16 v19, v5

    move-object v5, v0

    move-object/from16 v0, v19

    goto/16 :goto_7

    :pswitch_7
    iget-object v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    iget-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->h:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->g:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/MyApp;

    iget-wide v3, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->l:J

    iget-object v8, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->f:Ljava/lang/Object;

    check-cast v8, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v10, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->e:Ljava/lang/Object;

    check-cast v10, Lorg/mistergroup/shouldianswer/utils/e$a;

    iget-object v12, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->d:Ljava/lang/Object;

    check-cast v12, Lorg/mistergroup/shouldianswer/utils/e;

    :try_start_7
    invoke-static {v5}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-object/from16 v19, v5

    move-object v5, v0

    move-object/from16 v0, v19

    goto/16 :goto_6

    :pswitch_8
    iget-object v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    iget-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->h:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->g:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/MyApp;

    iget-wide v3, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->l:J

    iget-object v8, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->f:Ljava/lang/Object;

    check-cast v8, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v10, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->e:Ljava/lang/Object;

    check-cast v10, Lorg/mistergroup/shouldianswer/utils/e$a;

    iget-object v12, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->d:Ljava/lang/Object;

    check-cast v12, Lorg/mistergroup/shouldianswer/utils/e;

    :try_start_8
    invoke-static {v5}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-object/from16 v19, v5

    move-object v5, v0

    move-object/from16 v0, v19

    goto/16 :goto_5

    :pswitch_9
    iget-object v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    iget-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->h:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->g:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/MyApp;

    iget-wide v3, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->l:J

    iget-object v8, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->f:Ljava/lang/Object;

    check-cast v8, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v10, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->e:Ljava/lang/Object;

    check-cast v10, Lorg/mistergroup/shouldianswer/utils/e$a;

    iget-object v12, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->d:Ljava/lang/Object;

    check-cast v12, Lorg/mistergroup/shouldianswer/utils/e;

    :try_start_9
    invoke-static {v5}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-object/from16 v19, v5

    move-object v5, v0

    move-object/from16 v0, v19

    goto/16 :goto_4

    :pswitch_a
    iget-object v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->g:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/MyApp;

    iget-wide v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->l:J

    iget-object v4, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->f:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v8, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->e:Ljava/lang/Object;

    check-cast v8, Lorg/mistergroup/shouldianswer/utils/e$a;

    iget-object v10, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->d:Ljava/lang/Object;

    check-cast v10, Lorg/mistergroup/shouldianswer/utils/e;

    :try_start_a
    invoke-static {v5}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    move-object v5, v0

    move-object v0, v8

    move-wide/from16 v19, v2

    move-object v2, v4

    move-wide/from16 v3, v19

    goto :goto_2

    :pswitch_b
    invoke-static {v5}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 49
    :try_start_b
    sget-object v5, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v5

    .line 52
    sget-object v8, Lorg/mistergroup/shouldianswer/utils/e$a;->b:Lorg/mistergroup/shouldianswer/utils/e$a;

    if-eq v0, v8, :cond_2

    sget-object v8, Lorg/mistergroup/shouldianswer/utils/e;->h:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {v2, v8}, Lorg/mistergroup/shouldianswer/model/x;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    move-object v10, v0

    move-object v12, v1

    move-object v8, v2

    move-object v2, v5

    goto :goto_3

    .line 53
    :cond_2
    :goto_1
    sget-object v8, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/model/c;->A()V

    .line 55
    iput-object v1, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->d:Ljava/lang/Object;

    iput-object v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->e:Ljava/lang/Object;

    iput-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->f:Ljava/lang/Object;

    iput-wide v3, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->l:J

    iput-object v5, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->g:Ljava/lang/Object;

    iput v13, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->b:I

    invoke-virtual {v2, v3, v4, v6}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b(JLkotlin/c/c;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v7, :cond_3

    return-object v7

    :cond_3
    move-object v10, v1

    :goto_2
    move-object v8, v2

    move-object v2, v5

    move-object v12, v10

    move-object v10, v0

    .line 59
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CALLAUDIT number:\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lorg/mistergroup/shouldianswer/model/x;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\',"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "country:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "callType:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->d()Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/k;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "wantAlert:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v12, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->d:Ljava/lang/Object;

    iput-object v10, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->e:Ljava/lang/Object;

    iput-object v8, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->f:Ljava/lang/Object;

    iput-wide v3, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->l:J

    iput-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->g:Ljava/lang/Object;

    iput-object v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->h:Ljava/lang/Object;

    iput-object v5, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->i:Ljava/lang/Object;

    iput v11, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->b:I

    invoke-virtual {v8, v6}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->g(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_4

    return-object v7

    .line 47
    :cond_4
    :goto_4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "blockReason:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v12, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->d:Ljava/lang/Object;

    iput-object v10, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->e:Ljava/lang/Object;

    iput-object v8, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->f:Ljava/lang/Object;

    iput-wide v3, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->l:J

    iput-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->g:Ljava/lang/Object;

    iput-object v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->h:Ljava/lang/Object;

    iput-object v5, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->i:Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->b:I

    invoke-virtual {v8, v6}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->e(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_5

    return-object v7

    .line 47
    :cond_5
    :goto_5
    check-cast v0, Lorg/mistergroup/shouldianswer/model/h;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/h;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "rating:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v12, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->d:Ljava/lang/Object;

    iput-object v10, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->e:Ljava/lang/Object;

    iput-object v8, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->f:Ljava/lang/Object;

    iput-wide v3, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->l:J

    iput-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->g:Ljava/lang/Object;

    iput-object v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->h:Ljava/lang/Object;

    iput-object v5, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->i:Ljava/lang/Object;

    const/4 v0, 0x4

    iput v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->b:I

    invoke-virtual {v8, v6}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_6

    return-object v7

    .line 47
    :cond_6
    :goto_6
    check-cast v0, Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ag;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "lrating:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v12, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->d:Ljava/lang/Object;

    iput-object v10, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->e:Ljava/lang/Object;

    iput-object v8, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->f:Ljava/lang/Object;

    iput-wide v3, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->l:J

    iput-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->g:Ljava/lang/Object;

    iput-object v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->h:Ljava/lang/Object;

    iput-object v5, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->i:Ljava/lang/Object;

    const/4 v0, 0x5

    iput v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->b:I

    invoke-virtual {v8, v6}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->n(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_7

    return-object v7

    .line 47
    :cond_7
    :goto_7
    check-cast v0, Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ag;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "crating:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v12, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->d:Ljava/lang/Object;

    iput-object v10, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->e:Ljava/lang/Object;

    iput-object v8, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->f:Ljava/lang/Object;

    iput-wide v3, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->l:J

    iput-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->g:Ljava/lang/Object;

    iput-object v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->h:Ljava/lang/Object;

    iput-object v5, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->i:Ljava/lang/Object;

    const/4 v0, 0x6

    iput v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->b:I

    invoke-virtual {v8, v6}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->p(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_8

    return-object v7

    .line 47
    :cond_8
    :goto_8
    check-cast v0, Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ag;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "source:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/utils/e$a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    .line 70
    sget-object v14, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v14}, Lorg/mistergroup/shouldianswer/model/ai;->D()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->d()Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v14

    sget-object v15, Lorg/mistergroup/shouldianswer/model/k;->a:Lorg/mistergroup/shouldianswer/model/k;

    if-ne v14, v15, :cond_9

    .line 71
    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 73
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lkotlin/e/b/p;->a:Lkotlin/e/b/p;

    const v5, 0x7f100218

    invoke-virtual {v2, v5}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v11, "context.getString(R.string.tts_incoming_call)"

    invoke-static {v5, v11}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v11, v13, [Ljava/lang/Object;

    invoke-virtual {v14}, Lorg/mistergroup/shouldianswer/model/ac;->b()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v11, v16

    array-length v14, v11

    invoke-static {v11, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 77
    :cond_9
    sget-object v11, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/ai;->C()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->d()Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v11

    sget-object v14, Lorg/mistergroup/shouldianswer/model/k;->a:Lorg/mistergroup/shouldianswer/model/k;

    if-ne v11, v14, :cond_c

    .line 78
    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v11

    if-nez v11, :cond_c

    .line 80
    iput-object v12, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->d:Ljava/lang/Object;

    iput-object v10, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->e:Ljava/lang/Object;

    iput-object v8, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->f:Ljava/lang/Object;

    iput-wide v3, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->l:J

    iput-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->g:Ljava/lang/Object;

    iput-object v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->h:Ljava/lang/Object;

    iput-object v5, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->i:Ljava/lang/Object;

    iput-object v11, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->j:Ljava/lang/Object;

    const/4 v14, 0x7

    iput v14, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->b:I

    invoke-virtual {v8, v6}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->f(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v7, :cond_a

    return-object v7

    :cond_a
    move-object/from16 v19, v12

    move-object v12, v10

    move-object/from16 v10, v19

    .line 47
    :goto_9
    check-cast v14, Ljava/lang/String;

    .line 81
    iput-object v10, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->d:Ljava/lang/Object;

    iput-object v12, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->e:Ljava/lang/Object;

    iput-object v8, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->f:Ljava/lang/Object;

    iput-wide v3, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->l:J

    iput-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->g:Ljava/lang/Object;

    iput-object v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->h:Ljava/lang/Object;

    iput-object v5, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->i:Ljava/lang/Object;

    iput-object v11, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->j:Ljava/lang/Object;

    iput-object v14, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->k:Ljava/lang/Object;

    const/16 v11, 0x8

    iput v11, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->b:I

    invoke-virtual {v8, v6}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v7, :cond_b

    return-object v7

    :cond_b
    move-wide/from16 v17, v3

    move-object v4, v2

    move-object v2, v5

    .line 47
    :goto_a
    check-cast v11, Lorg/mistergroup/shouldianswer/model/ag;

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lkotlin/e/b/p;->a:Lkotlin/e/b/p;

    const v2, 0x7f100217

    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "context.getString(R.string.tts_alert)"

    invoke-static {v2, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v15, v5, [Ljava/lang/Object;

    sget-object v5, Lorg/mistergroup/shouldianswer/model/ag;->e:Lorg/mistergroup/shouldianswer/model/ag$a;

    invoke-virtual {v5, v11}, Lorg/mistergroup/shouldianswer/model/ag$a;->a(Lorg/mistergroup/shouldianswer/model/ag;)Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x0

    aput-object v5, v15, v16

    aput-object v14, v15, v13

    array-length v5, v15

    invoke-static {v15, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    move-object v0, v2

    move-object v14, v10

    move-object v10, v12

    move-wide/from16 v11, v17

    goto :goto_b

    :cond_c
    const/16 v16, 0x0

    move-object v14, v12

    move-wide v11, v3

    move-object v3, v0

    move-object v4, v2

    move-object v0, v5

    .line 86
    :goto_b
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_d

    move/from16 v16, v13

    :cond_d
    if-nez v16, :cond_10

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sget-wide v17, Lorg/mistergroup/shouldianswer/utils/e;->o:J

    sub-long v15, v15, v17

    const/16 v2, 0x3e8

    move-object v9, v14

    int-to-long v13, v2

    cmp-long v2, v15, v13

    if-gtz v2, :cond_e

    sget-object v2, Lorg/mistergroup/shouldianswer/utils/e;->n:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x1

    xor-int/2addr v2, v5

    if-eqz v2, :cond_11

    .line 88
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sput-wide v13, Lorg/mistergroup/shouldianswer/utils/e;->o:J

    .line 89
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/e;->n:Ljava/lang/String;

    const-wide/16 v13, 0x3e8

    .line 91
    iput-object v9, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->d:Ljava/lang/Object;

    iput-object v10, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->e:Ljava/lang/Object;

    iput-object v8, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->f:Ljava/lang/Object;

    iput-wide v11, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->l:J

    iput-object v4, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->g:Ljava/lang/Object;

    iput-object v3, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->h:Ljava/lang/Object;

    iput-object v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->i:Ljava/lang/Object;

    iput-object v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->j:Ljava/lang/Object;

    const/16 v2, 0x9

    iput v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->b:I

    invoke-static {v13, v14, v6}, Lkotlinx/coroutines/an;->a(JLkotlin/c/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_f

    return-object v7

    :cond_f
    move-object v2, v0

    move-object v14, v9

    .line 92
    :goto_c
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/z;->a:Lorg/mistergroup/shouldianswer/utils/z;

    invoke-virtual {v5, v0}, Lorg/mistergroup/shouldianswer/utils/z;->a(Ljava/lang/String;)V

    move-object v0, v2

    move-object v13, v14

    goto :goto_d

    :cond_10
    move-object v9, v14

    :cond_11
    move-object v13, v9

    .line 96
    :goto_d
    iput-object v13, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->d:Ljava/lang/Object;

    iput-object v10, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->e:Ljava/lang/Object;

    iput-object v8, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->f:Ljava/lang/Object;

    iput-wide v11, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->l:J

    iput-object v4, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->g:Ljava/lang/Object;

    iput-object v3, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->h:Ljava/lang/Object;

    iput-object v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->i:Ljava/lang/Object;

    const/16 v2, 0xa

    iput v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->b:I

    invoke-virtual {v8, v6}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->g(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v7, :cond_12

    return-object v7

    :cond_12
    move-object v2, v3

    move-object v3, v4

    move-object v4, v8

    .line 47
    :goto_e
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 97
    iput-object v13, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->d:Ljava/lang/Object;

    iput-object v10, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->e:Ljava/lang/Object;

    iput-object v4, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->f:Ljava/lang/Object;

    iput-wide v11, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->l:J

    iput-object v3, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->g:Ljava/lang/Object;

    iput-object v2, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->h:Ljava/lang/Object;

    iput-object v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->i:Ljava/lang/Object;

    iput-boolean v5, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->m:Z

    const/16 v0, 0xb

    iput v0, v6, Lorg/mistergroup/shouldianswer/utils/e$c;->b:I

    invoke-virtual {v4, v6}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_13

    return-object v7

    :cond_13
    move-object v9, v2

    move-object v8, v4

    move/from16 v19, v5

    move-object v5, v3

    move/from16 v3, v19

    .line 47
    :goto_f
    move-object v6, v0

    check-cast v6, Lorg/mistergroup/shouldianswer/model/ag;

    .line 98
    sget-object v0, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v10, v0

    check-cast v10, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lkotlin/c/f;

    const/4 v12, 0x0

    new-instance v0, Lorg/mistergroup/shouldianswer/utils/e$d;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v4, v8

    invoke-direct/range {v2 .. v7}, Lorg/mistergroup/shouldianswer/utils/e$d;-><init>(ZLorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/MyApp;Lorg/mistergroup/shouldianswer/model/ag;Lkotlin/c/c;)V

    move-object v13, v0

    check-cast v13, Lkotlin/e/a/m;

    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    .line 121
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v9, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 122
    sput-object v8, Lorg/mistergroup/shouldianswer/utils/e;->h:Lorg/mistergroup/shouldianswer/model/NumberInfo;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_10

    :catch_0
    move-exception v0

    .line 124
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v0, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 127
    :goto_10
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final a(I)V
    .locals 0

    .line 45
    sput p1, Lorg/mistergroup/shouldianswer/utils/e;->m:I

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lkotlin/e/a/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/e/a/b<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumber"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "CallHelper.callNumber"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 431
    :try_start_0
    sget-object v3, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/ai;->E()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 432
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/utils/y;->e()Landroid/telephony/SubscriptionManager;

    .line 434
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/utils/y;->h()Landroid/telecom/TelecomManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    .line 435
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 436
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallHelper.callNumber activeSubscriptionCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 438
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 439
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    .line 440
    sget-object v7, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/utils/y;->h()Landroid/telecom/TelecomManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v6

    const-string v7, "phoneAccount"

    .line 441
    invoke-static {v6, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 443
    :cond_0
    check-cast v4, Ljava/util/Collection;

    new-array v5, v0, [Ljava/lang/CharSequence;

    .line 477
    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 443
    check-cast v4, [Ljava/lang/CharSequence;

    .line 445
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v6, "CallHelper.callNumber showSubscription dialog"

    invoke-static {v5, v6, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 446
    new-instance v5, Landroidx/appcompat/app/d$a;

    invoke-direct {v5, p1}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    const v6, 0x7f1000ae

    .line 448
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/d$a;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;

    move-result-object v5

    .line 449
    new-instance v6, Lorg/mistergroup/shouldianswer/utils/e$b;

    invoke-direct {v6, v3, p1, p2, p3}, Lorg/mistergroup/shouldianswer/utils/e$b;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;Lkotlin/e/a/b;)V

    check-cast v6, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v4, v6}, Landroidx/appcompat/app/d$a;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p1

    .line 459
    invoke-virtual {p1}, Landroidx/appcompat/app/d$a;->b()Landroidx/appcompat/app/d;

    move-result-object p1

    .line 460
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->show()V

    return-void

    .line 477
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 464
    :cond_2
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/utils/y;->h()Landroid/telecom/TelecomManager;

    move-result-object v3

    const-string v4, "tel"

    invoke-virtual {v3, v4}, Landroid/telecom/TelecomManager;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 465
    invoke-virtual {p0, p1, p2, v3}, Lorg/mistergroup/shouldianswer/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z

    move-result p1

    if-eqz p3, :cond_3

    .line 466
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/e/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/o;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 469
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    if-eqz p3, :cond_4

    .line 472
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/e/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/o;

    :cond_4
    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/utils/e$a;Ljava/lang/String;)V
    .locals 13

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 148
    :try_start_0
    new-instance v4, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sget-object v2, Lorg/mistergroup/shouldianswer/utils/f;->a:Lorg/mistergroup/shouldianswer/utils/f;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/f;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/mistergroup/shouldianswer/model/k;->a:Lorg/mistergroup/shouldianswer/model/k;

    const/4 v5, 0x1

    invoke-direct {v4, p2, v2, v3, v5}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;Z)V

    .line 149
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallHelper.onRinging  source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lorg/mistergroup/shouldianswer/model/x;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 150
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    const-string v2, "TelephonyManager.EXTRA_STATE_RINGING"

    invoke-static {p2, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v4, p2}, Lorg/mistergroup/shouldianswer/utils/e;->a(Lorg/mistergroup/shouldianswer/utils/e$a;Lorg/mistergroup/shouldianswer/model/NumberInfo;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-static {v4}, Lorg/mistergroup/shouldianswer/model/x;->b(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 152
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/utils/o;->h()Z

    move-result p2

    if-nez p2, :cond_1

    .line 153
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string p2, "CallHelper.onRinging Number is blank, No permission to read_phone_state!"

    invoke-static {p1, p2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 157
    :cond_1
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v2, "CallHelper.onRinging Number is blank, permissions OK!"

    invoke-static {p2, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 160
    :cond_2
    sput-boolean v5, Lorg/mistergroup/shouldianswer/utils/e;->k:Z

    .line 161
    sput-object v4, Lorg/mistergroup/shouldianswer/utils/e;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    .line 162
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 163
    sget-object p2, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    check-cast p2, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lkotlin/c/f;

    const/4 v9, 0x0

    new-instance v10, Lorg/mistergroup/shouldianswer/utils/e$i;

    const/4 v7, 0x0

    move-object v2, v10

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/mistergroup/shouldianswer/utils/e$i;-><init>(Lorg/mistergroup/shouldianswer/utils/e$a;Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/c/c;)V

    check-cast v10, Lkotlin/e/a/m;

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v7, p2

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 172
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "phoneNumber"

    invoke-static {p2, p1}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/o;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 389
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tel:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 390
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_0

    .line 393
    check-cast p3, Landroid/os/Parcelable;

    const-string v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 394
    :cond_0
    sget-object p3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "CallHelper.callNumberEx placeCall"

    invoke-static {p3, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 395
    sget-object p3, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {p3}, Lorg/mistergroup/shouldianswer/utils/y;->h()Landroid/telecom/TelecomManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/c/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/model/NumberInfo;",
            "J",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 373
    sput-object p1, Lorg/mistergroup/shouldianswer/utils/e;->c:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    .line 374
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/e$a;->c:Lorg/mistergroup/shouldianswer/utils/e$a;

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/mistergroup/shouldianswer/utils/e;->a(Lorg/mistergroup/shouldianswer/utils/e$a;Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lorg/mistergroup/shouldianswer/utils/e$a;Ljava/lang/String;)V
    .locals 11

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 179
    :try_start_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 180
    new-instance v2, Lkotlin/e/b/m$c;

    invoke-direct {v2}, Lkotlin/e/b/m$c;-><init>()V

    new-instance v3, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sget-object v4, Lorg/mistergroup/shouldianswer/utils/f;->a:Lorg/mistergroup/shouldianswer/utils/f;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/utils/f;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/mistergroup/shouldianswer/model/k;->a:Lorg/mistergroup/shouldianswer/model/k;

    const/4 v9, 0x1

    invoke-direct {v3, p2, v4, v5, v9}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;Z)V

    iput-object v3, v2, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 181
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallHelper.onOffhook source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {v4}, Lorg/mistergroup/shouldianswer/model/x;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " latestState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/mistergroup/shouldianswer/utils/e;->m:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 183
    iget-object p2, v2, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast p2, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p2}, Lorg/mistergroup/shouldianswer/model/x;->e(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lorg/mistergroup/shouldianswer/utils/e;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p2}, Lorg/mistergroup/shouldianswer/model/x;->c(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 184
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/e;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    iput-object p2, v2, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 185
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CallHelper.onOffhook use latestRingingNumber"

    invoke-static {p2, v3, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 188
    :cond_1
    iget-object p2, v2, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast p2, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    const-string v4, "TelephonyManager.EXTRA_STATE_OFFHOOK"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v3}, Lorg/mistergroup/shouldianswer/utils/e;->a(Lorg/mistergroup/shouldianswer/utils/e$a;Lorg/mistergroup/shouldianswer/model/NumberInfo;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 193
    :cond_2
    sget-boolean p2, Lorg/mistergroup/shouldianswer/utils/e;->l:Z

    if-nez p2, :cond_4

    sget-boolean p2, Lorg/mistergroup/shouldianswer/utils/e;->k:Z

    if-nez p2, :cond_4

    .line 194
    iget-object p2, v2, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast p2, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p2}, Lorg/mistergroup/shouldianswer/model/x;->c(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 195
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CallHelper.onOffhook without previous ringing! Consider it OUTGOING call!"

    invoke-static {p2, v3, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 196
    iget-object p2, v2, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast p2, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sput-object p2, Lorg/mistergroup/shouldianswer/utils/e;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    .line 197
    sput-boolean v9, Lorg/mistergroup/shouldianswer/utils/e;->l:Z

    .line 198
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CallHelper.onOffhook let\'s check this number as outgoing!"

    invoke-static {p2, v3, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 199
    iget-object p2, v2, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast p2, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sget-object v3, Lorg/mistergroup/shouldianswer/model/k;->b:Lorg/mistergroup/shouldianswer/model/k;

    invoke-virtual {p2, v3}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a(Lorg/mistergroup/shouldianswer/model/k;)V

    .line 200
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object p2

    check-cast p2, Lkotlin/c/f;

    new-instance v10, Lorg/mistergroup/shouldianswer/utils/e$f;

    const/4 v8, 0x0

    move-object v3, v10

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v3 .. v8}, Lorg/mistergroup/shouldianswer/utils/e$f;-><init>(Lorg/mistergroup/shouldianswer/utils/e$a;Lkotlin/e/b/m$c;JLkotlin/c/c;)V

    check-cast v10, Lkotlin/e/a/m;

    invoke-static {p2, v10}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;)Ljava/lang/Object;

    goto :goto_0

    .line 204
    :cond_3
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance p2, Ljava/lang/Exception;

    const-string v2, "Outgoing call detected from missing ringing but NUMBER is BLANK!"

    invoke-direct {p2, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/Exception;)V

    return-void

    .line 209
    :cond_4
    :goto_0
    iget-object p1, v2, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sput-object p1, Lorg/mistergroup/shouldianswer/utils/e;->e:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    .line 210
    sput v0, Lorg/mistergroup/shouldianswer/utils/e;->m:I

    .line 211
    sput-boolean v9, Lorg/mistergroup/shouldianswer/utils/e;->j:Z

    .line 212
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/utils/e;->setChanged()V

    .line 213
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/utils/e;->notifyObservers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 215
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 218
    :goto_1
    sput v0, Lorg/mistergroup/shouldianswer/utils/e;->m:I

    return-void
.end method

.method public final c(Lorg/mistergroup/shouldianswer/utils/e$a;Ljava/lang/String;)V
    .locals 10

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 224
    :try_start_0
    new-instance v3, Lkotlin/e/b/m$c;

    invoke-direct {v3}, Lkotlin/e/b/m$c;-><init>()V

    new-instance v4, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sget-object v5, Lorg/mistergroup/shouldianswer/utils/f;->a:Lorg/mistergroup/shouldianswer/utils/f;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/utils/f;->a()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/mistergroup/shouldianswer/model/k;->a:Lorg/mistergroup/shouldianswer/model/k;

    const/4 v7, 0x1

    invoke-direct {v4, p2, v5, v6, v7}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;Z)V

    iput-object v4, v3, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 225
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallHelper.onIdle source="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " number="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {v4}, Lorg/mistergroup/shouldianswer/model/x;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 228
    iget-object v4, v3, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {v4}, Lorg/mistergroup/shouldianswer/model/x;->e(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lorg/mistergroup/shouldianswer/utils/e;->e:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {v4}, Lorg/mistergroup/shouldianswer/model/x;->c(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 229
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/e;->e:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    if-nez v4, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    iput-object v4, v3, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " use latestOffhookNumber="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v3, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast p2, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p2}, Lorg/mistergroup/shouldianswer/model/x;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 233
    :cond_1
    iget-object v4, v3, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {v4}, Lorg/mistergroup/shouldianswer/model/x;->e(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lorg/mistergroup/shouldianswer/utils/e;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {v4}, Lorg/mistergroup/shouldianswer/model/x;->c(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 234
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/e;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    if-nez v4, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    iput-object v4, v3, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " use latestRingingNumber="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v3, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast p2, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p2}, Lorg/mistergroup/shouldianswer/model/x;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 238
    :cond_3
    iget-object v4, v3, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sget-object v5, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    const-string v6, "TelephonyManager.EXTRA_STATE_IDLE"

    invoke-static {v5, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v4, v5}, Lorg/mistergroup/shouldianswer/utils/e;->a(Lorg/mistergroup/shouldianswer/utils/e$a;Lorg/mistergroup/shouldianswer/model/NumberInfo;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 239
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallHelper.onIdle return with info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2, v0, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 244
    :cond_4
    sget-boolean p1, Lorg/mistergroup/shouldianswer/utils/e;->j:Z

    if-eqz p1, :cond_5

    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " clear isOffhook"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 246
    sput-boolean v1, Lorg/mistergroup/shouldianswer/utils/e;->j:Z

    .line 249
    :cond_5
    sget-boolean p1, Lorg/mistergroup/shouldianswer/utils/e;->k:Z

    if-eqz p1, :cond_6

    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " clear isRinging"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 251
    sput-boolean v1, Lorg/mistergroup/shouldianswer/utils/e;->k:Z

    .line 254
    :cond_6
    sget-boolean p1, Lorg/mistergroup/shouldianswer/utils/e;->l:Z

    if-eqz p1, :cond_7

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " clear isOutgoingCall"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 256
    sput-boolean v1, Lorg/mistergroup/shouldianswer/utils/e;->l:Z

    .line 259
    :cond_7
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/e;->e:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/model/x;->c(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " clear latestOffhookNumber"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 261
    move-object p1, v2

    check-cast p1, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sput-object p1, Lorg/mistergroup/shouldianswer/utils/e;->e:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    .line 263
    :cond_8
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/e;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/model/x;->c(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 264
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " clear latestRingingNumber"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 265
    move-object p1, v2

    check-cast p1, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sput-object p1, Lorg/mistergroup/shouldianswer/utils/e;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    .line 267
    :cond_9
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/e;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/model/x;->c(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " clear latestOutgoingNumber"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 269
    move-object p1, v2

    check-cast p1, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sput-object p1, Lorg/mistergroup/shouldianswer/utils/e;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    .line 271
    :cond_a
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/e;->h:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/model/x;->c(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 272
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " clear lastCheckedNumber"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 273
    move-object p1, v2

    check-cast p1, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sput-object p1, Lorg/mistergroup/shouldianswer/utils/e;->h:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    .line 276
    :cond_b
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/e;->c:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/model/x;->c(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 277
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " clear lastCallScreeningNumber"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 278
    move-object p1, v2

    check-cast p1, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sput-object p1, Lorg/mistergroup/shouldianswer/utils/e;->c:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    .line 282
    :cond_c
    sget-object p1, Lorg/mistergroup/shouldianswer/b/h;->a:Lorg/mistergroup/shouldianswer/b/h$a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/b/h$a;->b()V

    .line 285
    sget-boolean p1, Lorg/mistergroup/shouldianswer/utils/e;->b:Z

    if-eqz p1, :cond_e

    .line 286
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " showInfoOnIdle"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 287
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ai;->y()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, v3, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/model/x;->d(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result p1

    if-eqz p1, :cond_d

    sget-object p1, Lorg/mistergroup/shouldianswer/b/h;->a:Lorg/mistergroup/shouldianswer/b/h$a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/b/h$a;->a()Z

    move-result p1

    if-nez p1, :cond_d

    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " showNumberDetailActivity"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 290
    :try_start_1
    sget-object p1, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v4, p1

    check-cast v4, Lkotlinx/coroutines/ad;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance p1, Lorg/mistergroup/shouldianswer/utils/e$e;

    invoke-direct {p1, v3, v2}, Lorg/mistergroup/shouldianswer/utils/e$e;-><init>(Lkotlin/e/b/m$c;Lkotlin/c/c;)V

    move-object v7, p1

    check-cast v7, Lkotlin/e/a/m;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 297
    :try_start_2
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, p1, v2, v0, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 300
    :cond_d
    iget-object p1, v3, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/model/x;->e(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 301
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/o;->m()Z

    move-result p1

    if-nez p1, :cond_e

    .line 302
    sget-object p1, Lorg/mistergroup/shouldianswer/b/d;->a:Lorg/mistergroup/shouldianswer/b/d;

    invoke-virtual {p1, v1}, Lorg/mistergroup/shouldianswer/b/d;->a(Z)V

    .line 307
    :cond_e
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " clear showInfoOnIdle"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 308
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v2, v0, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 309
    sput-boolean v1, Lorg/mistergroup/shouldianswer/utils/e;->b:Z

    .line 310
    sget-object p1, Lorg/mistergroup/shouldianswer/b/a;->a:Lorg/mistergroup/shouldianswer/b/a$a;

    move-object p2, v2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/b/a$a;->a(Ljava/lang/String;)V

    .line 311
    sput v1, Lorg/mistergroup/shouldianswer/utils/e;->m:I

    .line 312
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/utils/e;->setChanged()V

    .line 313
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/utils/e;->notifyObservers()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 315
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v2, v0, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 318
    :goto_1
    sput v1, Lorg/mistergroup/shouldianswer/utils/e;->m:I

    return-void
.end method

.method public final d(Lorg/mistergroup/shouldianswer/utils/e$a;Ljava/lang/String;)Z
    .locals 11

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "phoneNumber"

    invoke-static {p2, p1}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 323
    sput-boolean p1, Lorg/mistergroup/shouldianswer/utils/e;->l:Z

    .line 324
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sget-object v1, Lorg/mistergroup/shouldianswer/utils/f;->a:Lorg/mistergroup/shouldianswer/utils/f;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/f;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/mistergroup/shouldianswer/model/k;->b:Lorg/mistergroup/shouldianswer/model/k;

    invoke-direct {v0, p2, v1, v2, p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;Z)V

    .line 325
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallHelper.onOutgoingCall number="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/model/x;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 326
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/e;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    .line 327
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 328
    sget-object v3, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/c;->A()V

    .line 329
    sget-object v3, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lkotlin/c/f;

    new-instance v3, Lorg/mistergroup/shouldianswer/utils/e$g;

    const/4 v10, 0x0

    invoke-direct {v3, v0, v1, v2, v10}, Lorg/mistergroup/shouldianswer/utils/e$g;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/c/c;)V

    move-object v7, v3

    check-cast v7, Lkotlin/e/a/m;

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    .line 333
    new-instance v3, Lkotlin/e/b/m$a;

    invoke-direct {v3}, Lkotlin/e/b/m$a;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lkotlin/e/b/m$a;->a:Z

    .line 334
    new-instance v5, Lkotlin/e/b/m$a;

    invoke-direct {v5}, Lkotlin/e/b/m$a;-><init>()V

    iput-boolean v4, v5, Lkotlin/e/b/m$a;->a:Z

    .line 335
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v6

    check-cast v6, Lkotlin/c/f;

    new-instance v7, Lorg/mistergroup/shouldianswer/utils/e$h;

    invoke-direct {v7, v3, v0, v5, v10}, Lorg/mistergroup/shouldianswer/utils/e$h;-><init>(Lkotlin/e/b/m$a;Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/e/b/m$a;Lkotlin/c/c;)V

    check-cast v7, Lkotlin/e/a/m;

    invoke-static {v6, v7}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;)Ljava/lang/Object;

    .line 343
    iget-boolean v6, v5, Lkotlin/e/b/m$a;->a:Z

    if-eqz v6, :cond_0

    .line 344
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " wantBlock"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 346
    move-object v6, p0

    check-cast v6, Lorg/mistergroup/shouldianswer/utils/e;

    .line 347
    new-instance v6, Lorg/mistergroup/shouldianswer/b/a;

    invoke-direct {v6}, Lorg/mistergroup/shouldianswer/b/a;-><init>()V

    invoke-virtual {v6, v0, v1, v2}, Lorg/mistergroup/shouldianswer/b/a;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;J)V

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " blocked"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 350
    iput-boolean v4, v3, Lkotlin/e/b/m$a;->a:Z

    move v4, p1

    .line 353
    :cond_0
    iget-boolean v1, v3, Lkotlin/e/b/m$a;->a:Z

    if-eqz v1, :cond_2

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " wantAlert"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 355
    sget-object v1, Lorg/mistergroup/shouldianswer/services/MonitoringService;->a:Lorg/mistergroup/shouldianswer/services/MonitoringService$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/services/MonitoringService$a;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " checkWithTimer"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 357
    :cond_1
    sget-object v2, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/ai;->e()Lorg/mistergroup/shouldianswer/model/a;

    move-result-object v2

    sget-object v3, Lorg/mistergroup/shouldianswer/model/a;->c:Lorg/mistergroup/shouldianswer/model/a;

    if-ne v2, v3, :cond_2

    .line 358
    sget-object v2, Lorg/mistergroup/shouldianswer/b/h;->a:Lorg/mistergroup/shouldianswer/b/h$a;

    sget-object v3, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    xor-int/2addr p1, v1

    invoke-virtual {v2, v0, v3, p1}, Lorg/mistergroup/shouldianswer/b/h$a;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;Landroid/content/Context;Z)V

    .line 360
    :cond_2
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    invoke-static {p1, p2, v10, v1, v10}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 361
    iget-boolean p1, v5, Lkotlin/e/b/m$a;->a:Z

    if-eqz p1, :cond_3

    .line 362
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BLOCKAUDIT number:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/model/x;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",country="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",typ=outgoing"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v10, v1, v10}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_3
    return v4
.end method
