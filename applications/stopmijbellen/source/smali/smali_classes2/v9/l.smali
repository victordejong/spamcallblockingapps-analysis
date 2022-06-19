.class public Lv9/l;
.super Lq9/b;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lv9/f$e;


# direct methods
.method public varargs constructor <init>(Lv9/f$e;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv9/l;->b:Lv9/f$e;

    invoke-direct {p0, p2, p3}, Lq9/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv9/l;->b:Lv9/f$e;

    iget-object v0, v0, Lv9/f$e;->c:Lv9/f;

    iget-object v1, v0, Lv9/f;->b:Lv9/f$c;

    invoke-virtual {v1, v0}, Lv9/f$c;->a(Lv9/f;)V

    return-void
.end method
