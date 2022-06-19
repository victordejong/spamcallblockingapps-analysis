.class public final Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;
.super Ljava/lang/Object;
.source "ReportsItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b$a;

# The value of this static final field might be set in the static constructor
.field private static final h:I = 0x1

# The value of this static final field might be set in the static constructor
.field private static final i:I = 0x2


# instance fields
.field private b:I

.field private c:Lorg/mistergroup/shouldianswer/model/NumberReport;

.field private d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->a:Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b$a;

    const/4 v0, 0x1

    .line 24
    sput v0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->h:I

    const/4 v0, 0x2

    .line 25
    sput v0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->i:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->b:I

    return-void
.end method

.method public static final synthetic g()I
    .locals 1

    .line 11
    sget v0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->h:I

    return v0
.end method

.method public static final synthetic h()I
    .locals 1

    .line 11
    sget v0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->i:I

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 12
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->b:I

    return v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->f:Ljava/lang/String;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/NumberReport;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->c:Lorg/mistergroup/shouldianswer/model/NumberReport;

    return-void
.end method

.method public final b()Lorg/mistergroup/shouldianswer/model/NumberReport;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->c:Lorg/mistergroup/shouldianswer/model/NumberReport;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->g:Ljava/lang/String;

    return-void
.end method

.method public final c()Lorg/mistergroup/shouldianswer/model/NumberInfo;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/reported_numbers/b;->g:Ljava/lang/String;

    return-object v0
.end method
