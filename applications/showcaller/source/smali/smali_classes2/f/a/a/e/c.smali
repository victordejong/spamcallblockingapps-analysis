.class public Lf/a/a/e/c;
.super Ljava/lang/Object;
.source "HanyuPinyinToneType.java"


# static fields
.field public static final a:Lf/a/a/e/c;

.field public static final b:Lf/a/a/e/c;

.field public static final c:Lf/a/a/e/c;


# instance fields
.field protected d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf/a/a/e/c;

    const-string v1, "WITH_TONE_NUMBER"

    invoke-direct {v0, v1}, Lf/a/a/e/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf/a/a/e/c;->a:Lf/a/a/e/c;

    .line 2
    new-instance v0, Lf/a/a/e/c;

    const-string v1, "WITHOUT_TONE"

    invoke-direct {v0, v1}, Lf/a/a/e/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf/a/a/e/c;->b:Lf/a/a/e/c;

    .line 3
    new-instance v0, Lf/a/a/e/c;

    const-string v1, "WITH_TONE_MARK"

    invoke-direct {v0, v1}, Lf/a/a/e/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf/a/a/e/c;->c:Lf/a/a/e/c;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lf/a/a/e/c;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/c;->d:Ljava/lang/String;

    return-void
.end method
