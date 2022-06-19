.class public final synthetic Lcom/telguarder/features/numberLookup/-$$Lambda$LookupBlockerCheckManager$vcXTKzN8RRXTJRfdsZyqgcOd4Ns;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z

.field public final synthetic f$2:J

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$LookupBlockerCheckManager$vcXTKzN8RRXTJRfdsZyqgcOd4Ns;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$LookupBlockerCheckManager$vcXTKzN8RRXTJRfdsZyqgcOd4Ns;->f$1:Z

    iput-wide p3, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$LookupBlockerCheckManager$vcXTKzN8RRXTJRfdsZyqgcOd4Ns;->f$2:J

    iput p5, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$LookupBlockerCheckManager$vcXTKzN8RRXTJRfdsZyqgcOd4Ns;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$LookupBlockerCheckManager$vcXTKzN8RRXTJRfdsZyqgcOd4Ns;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$LookupBlockerCheckManager$vcXTKzN8RRXTJRfdsZyqgcOd4Ns;->f$1:Z

    iget-wide v2, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$LookupBlockerCheckManager$vcXTKzN8RRXTJRfdsZyqgcOd4Ns;->f$2:J

    iget v4, p0, Lcom/telguarder/features/numberLookup/-$$Lambda$LookupBlockerCheckManager$vcXTKzN8RRXTJRfdsZyqgcOd4Ns;->f$3:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->lambda$saveLastLookedupNumber$2(Ljava/lang/String;ZJI)V

    return-void
.end method
