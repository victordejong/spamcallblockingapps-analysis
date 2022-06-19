.class public Li8/h;
.super Ly8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ly8/a<",
        "Lh8/i;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lh8/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ly8/a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    sget-object v0, Lv8/c;->a:Lv8/c;

    const-string v1, "phone_id"

    invoke-virtual {p0, v0, v1}, Ly8/a;->d(Lv8/c;Ljava/lang/String;)Ly8/a;

    return-void
.end method
