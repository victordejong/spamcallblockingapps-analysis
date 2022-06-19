.class public final Lorg/mistergroup/shouldianswer/ui/main/c/b;
.super Lorg/mistergroup/shouldianswer/ui/main/c/a;
.source "LogItemHeader.kt"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "caption"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/a$a;->b:Lorg/mistergroup/shouldianswer/ui/main/c/a$a;

    invoke-direct {p0, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/a;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/a$a;)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/b;->a:Ljava/lang/String;

    return-object v0
.end method
