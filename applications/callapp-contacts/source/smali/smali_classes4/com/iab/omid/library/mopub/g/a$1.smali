.class public final Lcom/iab/omid/library/mopub/g/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iab/omid/library/mopub/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iab/omid/library/mopub/g/a;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/mopub/g/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iab/omid/library/mopub/g/a$1;->a:Lcom/iab/omid/library/mopub/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/mopub/g/a$1;->a:Lcom/iab/omid/library/mopub/g/a;

    invoke-static {v0}, Lcom/iab/omid/library/mopub/g/a;->a(Lcom/iab/omid/library/mopub/g/a;)Lcom/iab/omid/library/mopub/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mopub/g/c;->b()V

    return-void
.end method
