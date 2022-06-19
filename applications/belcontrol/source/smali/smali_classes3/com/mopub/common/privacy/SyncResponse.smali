.class public Lcom/mopub/common/privacy/SyncResponse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/privacy/SyncResponse$Builder;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p7}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p8}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p9}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p10}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p12}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "0"

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/mopub/common/privacy/SyncResponse;->a:Z

    const-string v1, "1"

    move-object v2, p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/mopub/common/privacy/SyncResponse;->b:Z

    move-object v2, p3

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/mopub/common/privacy/SyncResponse;->c:Z

    move-object v2, p4

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/mopub/common/privacy/SyncResponse;->d:Z

    move-object v2, p5

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/mopub/common/privacy/SyncResponse;->e:Z

    move-object v2, p6

    invoke-virtual {v1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mopub/common/privacy/SyncResponse;->f:Z

    move-object v1, p7

    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->g:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->h:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->i:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->j:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->k:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->l:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->m:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->n:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->o:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/privacy/SyncResponse$a;)V
    .locals 0

    invoke-direct/range {p0 .. p15}, Lcom/mopub/common/privacy/SyncResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getCallAgainAfterSecs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getConsentChangeReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPrivacyPolicyLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPrivacyPolicyVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentVendorListIabFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentVendorListIabHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentVendorListLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentVendorListVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->g:Ljava/lang/String;

    return-object v0
.end method

.method public isForceExplicitNo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/common/privacy/SyncResponse;->b:Z

    return v0
.end method

.method public isForceGdprApplies()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/common/privacy/SyncResponse;->f:Z

    return v0
.end method

.method public isGdprRegion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/common/privacy/SyncResponse;->a:Z

    return v0
.end method

.method public isInvalidateConsent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/common/privacy/SyncResponse;->c:Z

    return v0
.end method

.method public isReacquireConsent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/common/privacy/SyncResponse;->d:Z

    return v0
.end method

.method public isWhitelisted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/common/privacy/SyncResponse;->e:Z

    return v0
.end method
