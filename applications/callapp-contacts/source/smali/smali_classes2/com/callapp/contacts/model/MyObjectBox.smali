.class public Lcom/callapp/contacts/model/MyObjectBox;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildEntityAnalyticsCallsData(Lio/objectbox/e;)V
    .locals 12

    const-string v0, "AnalyticsCallsData"

    .line 325
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x2b

    const-wide v1, 0x4f3d7cf8b3ad4271L    # 5.2101086414523677E73

    .line 326
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/16 v1, 0x10

    const-wide v2, 0x50c6370a90cf6b47L    # 1.317028780957268E81

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 26189
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x1

    const-wide v6, 0x1c514c5674203fa9L

    .line 328
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v6, 0x3

    .line 329
    invoke-virtual {v0, v6}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "date"

    .line 27189
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v7, 0x2

    const-wide v8, 0x4c76ca347f82342cL    # 2.2888686733396422E60

    .line 330
    invoke-virtual {v0, v7, v8, v9}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v8, 0x4

    .line 331
    invoke-virtual {v0, v8}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "callType"

    const/4 v9, 0x5

    .line 28189
    invoke-virtual {p0, v0, v9}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v10, 0x366021b034be9554L    # 8.830148131835592E-47

    .line 332
    invoke-virtual {v0, v6, v10, v11}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 333
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "dayType"

    .line 29189
    invoke-virtual {p0, v0, v9}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v10, 0x120dd094bc3a50e2L

    .line 334
    invoke-virtual {v0, v8, v10, v11}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 335
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "simId"

    .line 30189
    invoke-virtual {p0, v0, v9}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v10, 0x7c1b88a6afc25c4cL    # 6.708136573739725E289

    .line 336
    invoke-virtual {v0, v9, v10, v11}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 337
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "phoneAsGlobal"

    const/16 v6, 0x9

    .line 31189
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v7, 0x7

    const-wide v9, 0x5f36b37bb938d133L    # 4.6443493251561004E150

    .line 338
    invoke-virtual {v0, v7, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "duration"

    .line 32189
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v4, 0x8

    const-wide v9, 0x4a70747d4869ee5cL    # 3.847850084478544E50

    .line 339
    invoke-virtual {v0, v4, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 340
    invoke-virtual {v0, v8}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "isSpam"

    .line 33189
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v9, 0x25430b86d4224e9eL    # 3.434420283146239E-129

    .line 341
    invoke-virtual {v0, v6, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 342
    invoke-virtual {v0, v8}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "isBlock"

    .line 34189
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v4, 0xa

    const-wide v6, 0x3699267218ab08e1L    # 1.1013408272097015E-45

    .line 343
    invoke-virtual {v0, v4, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 344
    invoke-virtual {v0, v8}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "isPrivate"

    .line 35189
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v4, 0xb

    const-wide v6, 0x6ee796483a738c9bL    # 1.7461445688663845E226

    .line 345
    invoke-virtual {v0, v4, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 346
    invoke-virtual {v0, v8}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "isIncognito"

    .line 36189
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v4, 0xc

    const-wide v6, 0x12d8ba7750d0cdd7L    # 7.00517305493701E-218

    .line 347
    invoke-virtual {v0, v4, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 348
    invoke-virtual {v0, v8}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "isConference"

    .line 37189
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v4, 0xd

    const-wide v6, 0x109354ea8de269eaL    # 7.969176417375377E-229

    .line 349
    invoke-virtual {v0, v4, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 350
    invoke-virtual {v0, v8}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "isInternational"

    .line 38189
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v4, 0xe

    const-wide v6, 0x3f4f98c62970ed2dL    # 9.64257010202562E-4

    .line 351
    invoke-virtual {v0, v4, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 352
    invoke-virtual {v0, v8}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "isIdentified"

    .line 39189
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v4, 0xf

    const-wide v6, 0x4df729cf755a4405L    # 3.9030120046379694E67

    .line 353
    invoke-virtual {v0, v4, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 354
    invoke-virtual {v0, v8}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "isExclude"

    .line 40189
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 355
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 356
    invoke-virtual {v0, v8}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    .line 359
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityAnalyticsExcludeContact(Lio/objectbox/e;)V
    .locals 7

    const-string v0, "AnalyticsExcludeContact"

    .line 363
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x30

    const-wide v1, 0x6b70e7d97e69e140L    # 3.4736750762093044E209

    .line 364
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/4 v1, 0x2

    const-wide v2, 0x607de62559759e70L    # 6.4140823778283115E156

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 41189
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x1

    const-wide v5, 0x2d9e7a6a27e40794L    # 5.984809824352255E-89

    .line 366
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x3

    .line 367
    invoke-virtual {v0, v4}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "phoneAsGlobal"

    const/16 v4, 0x9

    .line 42189
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 368
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    .line 371
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityBirthdayData(Lio/objectbox/e;)V
    .locals 11

    const-string v0, "BirthdayData"

    .line 375
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x16

    const-wide v1, 0x4e871196d72409cL    # 5.13649889080924E-285

    .line 376
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/4 v1, 0x7

    const-wide v2, 0x2e77f2767a120085L    # 7.704323807089651E-85

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 43189
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x1

    const-wide v6, 0x7519e32b8c1a3b7aL    # 1.2146872827693066E256

    .line 378
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x3

    .line 379
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "phoneOrIdKey"

    const/16 v6, 0x9

    .line 44189
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v7, 0x2

    const-wide v8, 0x7f11807b8997ff64L    # 1.2002189090606912E304

    .line 380
    invoke-virtual {v0, v7, v8, v9}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v7, 0x800

    .line 381
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v7, 0x1f

    const-wide v8, 0xee55c382107f6ccL    # 6.560536794342912E-237

    invoke-virtual {v0, v7, v8, v9}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "dayOfMonth"

    const/4 v7, 0x5

    .line 45189
    invoke-virtual {p0, v0, v7}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v8, 0x98d16e69243a109L

    .line 382
    invoke-virtual {v0, v5, v8, v9}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v5, 0xc

    .line 383
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v8, 0x2a

    const-wide v9, 0x61164cd2ecc58f9eL    # 4.898740140604845E159

    invoke-virtual {v0, v8, v9, v10}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "month"

    .line 46189
    invoke-virtual {p0, v0, v7}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v8, 0x4

    const-wide v9, 0xc24cbc4c6791411L    # 3.63072053346832E-250

    .line 384
    invoke-virtual {v0, v8, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 385
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v5, 0x2b

    const-wide v9, 0x7e9761f3e93c73acL    # 6.263671800257478E301

    invoke-virtual {v0, v5, v9, v10}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "socialNetId"

    .line 47189
    invoke-virtual {p0, v0, v7}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v9, 0x2cec19351877559eL    # 2.694101521631209E-92

    .line 386
    invoke-virtual {v0, v7, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 387
    invoke-virtual {v0, v8}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "socialProfileId"

    .line 48189
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v7, 0xc863a9ff43aba29L

    .line 388
    invoke-virtual {v0, v4, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "displayName"

    .line 49189
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 389
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    .line 392
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityBlockedNumberData(Lio/objectbox/e;)V
    .locals 9

    const-string v0, "BlockedNumberData"

    .line 396
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/4 v0, 0x1

    const-wide v1, 0x7278842809f8e68fL    # 2.6155938420403593E243

    .line 397
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v1

    const/4 v2, 0x6

    const-wide v3, 0x311a9634a3974ddcL    # 3.761890493780706E-72

    invoke-virtual {v1, v2, v3, v4}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    const-string v1, "id"

    .line 50189
    invoke-virtual {p0, v1, v2}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const-wide v5, 0x417291559897ee2bL    # 1.946965753709237E7

    .line 399
    invoke-virtual {v1, v0, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    .line 400
    invoke-virtual {v1, v0}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v1, "phoneNum"

    const/16 v5, 0x9

    .line 50190
    invoke-virtual {p0, v1, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v6, 0x2

    const-wide v7, 0x3da8c87b46039773L    # 1.1270063170839447E-11

    .line 401
    invoke-virtual {v1, v6, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    const/16 v6, 0x800

    .line 402
    invoke-virtual {v1, v6}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v1

    const-wide v6, 0x4a0bf48a80779a4eL    # 5.1070783312405125E48

    invoke-virtual {v1, v0, v6, v7}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v1, "fullName"

    .line 50191
    invoke-virtual {p0, v1, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v5, 0x3

    const-wide v6, 0x7e93082a1e8d21d4L    # 5.098209207132565E301

    .line 403
    invoke-virtual {v1, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v1, "blockSms"

    .line 50192
    invoke-virtual {p0, v1, v0}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v5, 0x4

    const-wide v6, 0x3c5318cf5d31261cL    # 4.140983156204425E-18

    .line 404
    invoke-virtual {v1, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    const/16 v5, 0xc

    .line 405
    invoke-virtual {v1, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v1

    const/16 v6, 0x2c

    const-wide v7, 0x5c214a355a18c73dL    # 6.283475920501081E135

    invoke-virtual {v1, v6, v7, v8}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v1, "blockCall"

    .line 50193
    invoke-virtual {p0, v1, v0}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v1, 0x5

    const-wide v6, 0x3a9e8a70d768145L

    .line 406
    invoke-virtual {v0, v1, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 407
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x2d

    const-wide v6, 0x1cb43e19d59bb773L

    invoke-virtual {v0, v1, v6, v7}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string/jumbo v0, "when"

    .line 50194
    invoke-virtual {p0, v0, v2}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 408
    invoke-virtual {v0, v2, v3, v4}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 409
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x45

    const-wide v2, 0x77664748e40ca19L

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    .line 412
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityBlockedRule(Lio/objectbox/e;)V
    .locals 8

    const-string v0, "BlockedRule"

    .line 416
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/4 v0, 0x2

    const-wide v1, 0x595513060311ec91L    # 2.176765427300809E122

    .line 417
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v1

    const/4 v2, 0x3

    const-wide v3, 0x25e28604eae649ceL    # 3.420543903471732E-126

    invoke-virtual {v1, v2, v3, v4}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    const-string v1, "id"

    const/4 v5, 0x6

    .line 50195
    invoke-virtual {p0, v1, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v5, 0x1

    const-wide v6, 0x76424bd3f23009edL    # 4.500981361841174E261

    .line 419
    invoke-virtual {v1, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    .line 420
    invoke-virtual {v1, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v1, "rawNumber"

    const/16 v5, 0x9

    .line 50196
    invoke-virtual {p0, v1, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const-wide v5, 0x54669f97862931e6L    # 3.865864123834707E98

    .line 421
    invoke-virtual {v1, v0, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    const/16 v5, 0x800

    .line 422
    invoke-virtual {v1, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v1

    const-wide v5, 0x2e218861cfbf495dL    # 1.7627109696108387E-86

    invoke-virtual {v1, v0, v5, v6}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "blockRuleType"

    const/4 v1, 0x5

    .line 50197
    invoke-virtual {p0, v0, v1}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 423
    invoke-virtual {v0, v2, v3, v4}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0xa

    .line 424
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x2e

    const-wide v2, 0x51b737bb47daaf3dL    # 4.5104306310054015E85

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    .line 427
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityCacheData(Lio/objectbox/e;)V
    .locals 11

    const-string v0, "CacheData"

    .line 431
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x19

    const-wide v1, 0x4f377c5612b7a36bL    # 4.149561956348393E73

    .line 432
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/16 v1, 0x9

    const-wide v2, 0x465de3aa5d87b63aL    # 9.472303076863879E30

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 433
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50198
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x1

    const-wide v6, 0x2c88e5decb367123L    # 3.7300497270639683E-94

    .line 435
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 436
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "file"

    .line 50199
    invoke-virtual {p0, v0, v1}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v6, 0x2

    const-wide v7, 0x77a7738da4465b1L

    .line 437
    invoke-virtual {v0, v6, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v7, 0x800

    .line 438
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v7, 0x24

    const-wide v8, 0x72f1ca6fef3fef8L

    invoke-virtual {v0, v7, v8, v9}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "expires"

    const/16 v7, 0xa

    .line 50200
    invoke-virtual {p0, v0, v7}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v7, 0x3

    const-wide v8, 0x671e19dca257d269L    # 5.238881276260761E188

    .line 439
    invoke-virtual {v0, v7, v8, v9}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v7, 0x8

    .line 440
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v8, 0x25

    const-wide v9, 0x25f7a3633e450ddL

    invoke-virtual {v0, v8, v9, v10}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string/jumbo v0, "valueType"

    .line 50201
    invoke-virtual {p0, v0, v1}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v8, 0x4

    const-wide v9, 0x7da9d78f297c3f1bL    # 2.1125759639830345E297

    .line 441
    invoke-virtual {v0, v8, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "stringVal"

    .line 50202
    invoke-virtual {p0, v0, v1}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v8, 0x5

    const-wide v9, 0x413a368f2f63c4f1L    # 1717903.1851161087

    .line 442
    invoke-virtual {v0, v8, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "longVal"

    .line 50203
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v9, 0x2f1b353d894dabbfL    # 8.963493990416354E-82

    .line 443
    invoke-virtual {v0, v4, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 444
    invoke-virtual {v0, v6}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "booleanVal"

    .line 50204
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x7

    const-wide v9, 0x707a538eb0e02b09L    # 6.539552985311138E233

    .line 445
    invoke-virtual {v0, v4, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 446
    invoke-virtual {v0, v6}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "integerVal"

    .line 50205
    invoke-virtual {p0, v0, v8}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v4, 0x1dbe11247bb3ae74L

    .line 447
    invoke-virtual {v0, v7, v4, v5}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 448
    invoke-virtual {v0, v6}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "bytesVal"

    const/16 v4, 0x17

    .line 50206
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 449
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    .line 452
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityCallRecorder(Lio/objectbox/e;)V
    .locals 11

    const-string v0, "CallRecorder"

    .line 456
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0xa

    const-wide v1, 0x4f27f7f73d0481c2L    # 2.1174439685145352E73

    .line 457
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v1

    const/16 v2, 0x9

    const-wide v3, 0x7b9580aeedbab81aL    # 2.046389291291132E287

    invoke-virtual {v1, v2, v3, v4}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    const-string v1, "id"

    const/4 v5, 0x6

    .line 50207
    invoke-virtual {p0, v1, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v6, 0x1

    const-wide v7, 0x77d6edb6e7f3490aL    # 1.892662388556735E269

    .line 459
    invoke-virtual {v1, v6, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v7, 0x3

    .line 460
    invoke-virtual {v1, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v1, "phoneOrIdKey"

    .line 50208
    invoke-virtual {p0, v1, v2}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v8, 0x2

    const-wide v9, 0x184532629630191cL    # 9.291876252088376E-192

    .line 461
    invoke-virtual {v1, v8, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    const/16 v8, 0x800

    .line 462
    invoke-virtual {v1, v8}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v1

    const-wide v8, 0x25ecc9bfaab876a9L

    invoke-virtual {v1, v0, v8, v9}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "date"

    .line 50209
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v8, 0x7105889ed6d92b3cL    # 2.738701762937818E236

    .line 463
    invoke-virtual {v0, v7, v8, v9}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0xc

    .line 464
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v7, 0xb

    const-wide v8, 0x9d2089467cc4a3fL

    invoke-virtual {v0, v7, v8, v9}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "fileName"

    .line 50210
    invoke-virtual {p0, v0, v2}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v7, 0x4

    const-wide v8, 0x665970485ae0adbL

    .line 465
    invoke-virtual {v0, v7, v8, v9}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "duration"

    .line 50211
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v8, 0x5

    const-wide v9, 0x248877652f7f52deL

    .line 466
    invoke-virtual {v0, v8, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 467
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "starred"

    .line 50212
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v9, 0x25e66d0a2bf970fL

    .line 468
    invoke-virtual {v0, v5, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 469
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v9, 0x470fc913720a08f2L    # 2.0629938446678004E34

    invoke-virtual {v0, v1, v9, v10}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "note"

    .line 50213
    invoke-virtual {p0, v0, v2}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v1, 0x7

    const-wide v9, 0x137581ac6204a368L    # 6.238692529019924E-215

    .line 470
    invoke-virtual {v0, v1, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "callType"

    .line 50214
    invoke-virtual {p0, v0, v8}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x8

    const-wide v8, 0x1e9ecd50915b0389L

    .line 471
    invoke-virtual {v0, v1, v8, v9}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 472
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "isUploaded"

    .line 50215
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 473
    invoke-virtual {v0, v2, v3, v4}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 474
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    .line 477
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityCallReminderFrequentData(Lio/objectbox/e;)V
    .locals 10

    const-string v0, "CallReminderFrequentData"

    .line 481
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x25

    const-wide v1, 0x555109b35b2a9537L    # 9.540132820154543E102

    .line 482
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/16 v1, 0xa

    const-wide v2, 0x65bdbe3bfc7cc16cL    # 1.2341946821000331E182

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 483
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50216
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x1

    const-wide v6, 0x4b54d132b07fc71dL    # 7.975558769599583E54

    .line 485
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x3

    .line 486
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "phoneAsGlobal"

    const/16 v6, 0x9

    .line 50217
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v6, 0x2

    const-wide v7, 0x5129fe3e10a7f1c0L    # 9.862510523012818E82

    .line 487
    invoke-virtual {v0, v6, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "frequentType"

    const/4 v7, 0x5

    .line 50218
    invoke-virtual {p0, v0, v7}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v8, 0x21610b7d16852645L    # 6.665090035930922E-148

    .line 488
    invoke-virtual {v0, v5, v8, v9}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 489
    invoke-virtual {v0, v6}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "deleteTimeStamp"

    .line 50219
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x7

    const-wide v8, 0x18ba8ec1dd9f65f5L

    .line 490
    invoke-virtual {v0, v5, v8, v9}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x4

    .line 491
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "missedCallType"

    .line 50220
    invoke-virtual {p0, v0, v7}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v6, 0x8

    const-wide v7, 0x6d0381f500ded3ecL    # 1.344967308325424E217

    .line 492
    invoke-virtual {v0, v6, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 493
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "lastDeleteFromNotificationTimeStamp"

    .line 50221
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 494
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 495
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    .line 498
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityCallRemindersData(Lio/objectbox/e;)V
    .locals 9

    const-string v0, "CallRemindersData"

    .line 502
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/4 v0, 0x7

    const-wide v1, 0x35afef044748ea2fL    # 4.2675578465179974E-50

    .line 503
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/16 v1, 0xa

    const-wide v2, 0x7bc4b13845330ad8L    # 1.5754110838589852E288

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 504
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50222
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x1

    const-wide v6, 0x58edab700585cf5bL    # 2.3942038300777595E120

    .line 506
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x3

    .line 507
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "date"

    .line 50223
    invoke-virtual {p0, v0, v1}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v6, 0x2

    const-wide v7, 0x7c1f111004e57d6bL    # 7.568856654580034E289

    .line 508
    invoke-virtual {v0, v6, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "displayName"

    const/16 v6, 0x9

    .line 50224
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v7, 0x7cc2e1f82d7b594cL    # 9.421710030653992E292

    .line 509
    invoke-virtual {v0, v5, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "phoneAsRaw"

    .line 50225
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v5, 0x8

    const-wide v7, 0xf49c0ebb9f86e5fL    # 5.062339751769458E-235

    .line 510
    invoke-virtual {v0, v5, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "jobStringId"

    .line 50226
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 511
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "notificationTime"

    .line 50227
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v2, 0x5

    const-wide v5, 0x64ef62e90d5f300L

    .line 512
    invoke-virtual {v0, v2, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 513
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v2, 0x7b40ee944bc246c0L    # 5.035619282787536E285

    invoke-virtual {v0, v4, v2, v3}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "notificationId"

    .line 50228
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v2, 0x520a834bb6f06da9L    # 1.6481835419547208E87

    .line 514
    invoke-virtual {v0, v4, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 515
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x2f

    const-wide v2, 0x1b5376d691e39094L    # 4.803296270009717E-177

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    .line 518
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityChosenContactPhoto(Lio/objectbox/e;)V
    .locals 9

    const-string v0, "ChosenContactPhoto"

    .line 522
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0xb

    const-wide v1, 0x67d4351ca1581df9L    # 1.4405527077791332E192

    .line 523
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/4 v1, 0x4

    const-wide v2, 0x1d685d1def38a1e3L    # 5.164595779404083E-167

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50229
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x1

    const-wide v5, 0x736e0d76cc73a295L    # 1.0506266495417213E248

    .line 525
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x3

    .line 526
    invoke-virtual {v0, v4}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "phoneOrIdKey"

    const/16 v5, 0x9

    .line 50230
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v6, 0x2

    const-wide v7, 0x3bd2417971e4fdd9L    # 1.5463229648389497E-20

    .line 527
    invoke-virtual {v0, v6, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v6, 0x800

    .line 528
    invoke-virtual {v0, v6}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v6, 0xd

    const-wide v7, 0x7bb281a33f8ad24dL    # 7.044947348785506E287

    invoke-virtual {v0, v6, v7, v8}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "dataSource"

    .line 50231
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v6, 0x44dc38254eb25655L    # 5.33047869882357E23

    .line 529
    invoke-virtual {v0, v4, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "url"

    .line 50232
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 530
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    .line 533
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityCommonSpammer(Lio/objectbox/e;)V
    .locals 9

    const-string v0, "CommonSpammer"

    .line 537
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x9

    const-wide v1, 0x5aff5f3d519325b3L    # 2.1746068788981546E130

    .line 538
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v1

    const/4 v2, 0x4

    const-wide v3, 0x7559ffc4ae76939bL    # 1.951886422812713E257

    invoke-virtual {v1, v2, v3, v4}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    const-string v1, "id"

    const/4 v5, 0x6

    .line 50233
    invoke-virtual {p0, v1, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v5, 0x1

    const-wide v6, 0x7d741b7cd0008ed3L    # 2.054712628569122E296

    .line 540
    invoke-virtual {v1, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v5, 0x3

    .line 541
    invoke-virtual {v1, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v1, "commonSpammerName"

    .line 50234
    invoke-virtual {p0, v1, v0}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v6, 0x2

    const-wide v7, 0xf0df4720ec0d39fL    # 3.68010986889456E-236

    .line 542
    invoke-virtual {v1, v6, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v1, "commonSpammerPhone"

    .line 50235
    invoke-virtual {p0, v1, v0}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v6, 0x175ef2dfc26302f1L    # 4.140241011478879E-196

    .line 543
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x800

    .line 544
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v1, 0x7

    const-wide v5, 0xba676fe04f5cb42L

    invoke-virtual {v0, v1, v5, v6}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "commonSpammerScore"

    const/4 v1, 0x5

    .line 50236
    invoke-virtual {p0, v0, v1}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 545
    invoke-virtual {v0, v2, v3, v4}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 546
    invoke-virtual {v0, v2}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    .line 549
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityContactLookupData(Lio/objectbox/e;)V
    .locals 12

    const-string v0, "ContactLookupData"

    .line 553
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x8

    const-wide v1, 0x47a7bcba5aa76856L    # 1.5776087711494325E37

    .line 554
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v1

    const/16 v2, 0x10

    const-wide v3, 0x77f368edb1b977ccL    # 6.40883239383402E269

    invoke-virtual {v1, v2, v3, v4}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 555
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v1, "id"

    const/4 v5, 0x6

    .line 50237
    invoke-virtual {p0, v1, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v6, 0x1

    const-wide v7, 0x31615ec796b15e46L    # 7.864962770027034E-71

    .line 557
    invoke-virtual {v1, v6, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    .line 558
    invoke-virtual {v1, v6}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v1, "lookupKey"

    const/16 v6, 0x9

    .line 50238
    invoke-virtual {p0, v1, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v7, 0x2

    const-wide v8, 0x7832212930ed75f0L    # 9.577734074544726E270

    .line 559
    invoke-virtual {v1, v7, v8, v9}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    const/16 v7, 0x800

    .line 560
    invoke-virtual {v1, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v1

    const-wide v8, 0x355b06bf374091d2L

    invoke-virtual {v1, v0, v8, v9}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v1, "contactId"

    .line 50239
    invoke-virtual {p0, v1, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v8, 0x3

    const-wide v9, 0x1547b9be02ba499fL

    .line 561
    invoke-virtual {v1, v8, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    const/16 v8, 0xc

    .line 562
    invoke-virtual {v1, v8}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v1

    const-wide v9, 0x48097a1de8582383L    # 1.083672534702527E39

    invoke-virtual {v1, v6, v9, v10}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v1, "phoneNumbers"

    .line 50240
    invoke-virtual {p0, v1, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v9, 0x5

    const-wide v10, 0x2055aabbdfb8b215L    # 6.463973631366313E-153

    .line 563
    invoke-virtual {v1, v9, v10, v11}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v1, "nameT9Format"

    .line 50241
    invoke-virtual {p0, v1, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const-wide v9, 0x7356558f7bcbbabeL    # 3.903977043934104E247

    .line 564
    invoke-virtual {v1, v5, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    .line 565
    invoke-virtual {v1, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v1

    const/16 v5, 0x47

    const-wide v9, 0x401e939cd4d1f9bcL    # 7.644152951541795

    invoke-virtual {v1, v5, v9, v10}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v1, "nameT9FormatNoZero"

    .line 50242
    invoke-virtual {p0, v1, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v5, 0x7

    const-wide v9, 0x22ae2b52c9fe1f74L

    .line 566
    invoke-virtual {v1, v5, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    .line 567
    invoke-virtual {v1, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v1

    const/16 v5, 0x48

    const-wide v9, 0x7b57786956784118L

    invoke-virtual {v1, v5, v9, v10}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v1, "displayName"

    .line 50243
    invoke-virtual {p0, v1, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const-wide v9, 0x1f8c3f802656a803L

    .line 568
    invoke-virtual {v1, v0, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 569
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x49

    const-wide v9, 0x6904a574da6b2cf1L    # 7.716665992242978E197

    invoke-virtual {v0, v1, v9, v10}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "unAccentName"

    .line 50244
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v9, 0x7f09fddb0a871032L    # 8.912079472330436E303

    .line 570
    invoke-virtual {v0, v6, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 571
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x4a

    const-wide v9, 0x6fe1dc8aa425b298L    # 8.665714734932821E230

    invoke-virtual {v0, v1, v9, v10}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "description"

    .line 50245
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v9, 0x43f753304ea6a105L    # 2.6891843204807676E19

    .line 572
    invoke-virtual {v0, v8, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 573
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x50

    const-wide v8, 0x409fdf0207135866L    # 2039.7519801161484

    invoke-virtual {v0, v1, v8, v9}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "unAccentDescription"

    .line 50246
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0xd

    const-wide v8, 0x64537e87a9d4561fL    # 1.928609019409555E175

    .line 574
    invoke-virtual {v0, v1, v8, v9}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 575
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x51

    const-wide v7, 0x1fc675c659a90f0fL

    invoke-virtual {v0, v1, v7, v8}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "t9Indexes"

    .line 50247
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0xe

    const-wide v7, 0x4b5db6b36ed3f2e2L    # 1.1384018774458509E55

    .line 576
    invoke-virtual {v0, v1, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "namesMap"

    .line 50248
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0xf

    const-wide v7, 0x7718f4061ba13c88L    # 5.028781398423741E265

    .line 577
    invoke-virtual {v0, v1, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "descriptionMap"

    .line 50249
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 578
    invoke-virtual {v0, v2, v3, v4}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    .line 581
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityExtractedInfo(Lio/objectbox/e;)V
    .locals 16

    const-string v0, "ExtractedInfo"

    move-object/from16 v1, p0

    .line 585
    invoke-virtual {v1, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object v0

    const/16 v1, 0xd

    const-wide v2, 0x1cfd142c91b2f09bL    # 4.815695315320669E-169

    .line 586
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v2

    const/16 v3, 0x14

    const-wide v4, 0x39eccec444a8ae6bL    # 1.1362627174183369E-29

    invoke-virtual {v2, v3, v4, v5}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 587
    invoke-virtual {v0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v2, "id"

    const/4 v6, 0x6

    .line 50250
    invoke-virtual {v0, v2, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v2

    const/4 v7, 0x1

    const-wide v8, 0x2ae79cc55dbf18aL

    .line 589
    invoke-virtual {v2, v7, v8, v9}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v2

    const/4 v8, 0x3

    .line 590
    invoke-virtual {v2, v8}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v2, "recognizedPersonOrigin"

    const/4 v9, 0x5

    .line 50251
    invoke-virtual {v0, v2, v9}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v2

    const/4 v10, 0x2

    const-wide v11, 0x54cf5a2740c63bebL    # 3.4287518931478373E100

    .line 591
    invoke-virtual {v2, v10, v11, v12}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v2

    const/16 v11, 0xa

    .line 592
    invoke-virtual {v2, v11}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v2

    const/16 v12, 0x10

    const-wide v13, 0x2a589e5c742fccdL

    invoke-virtual {v2, v12, v13, v14}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v2, "comType"

    .line 50252
    invoke-virtual {v0, v2, v9}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v2

    const-wide v13, 0x2eba2ff6b93bcd73L    # 1.3480093575230664E-83

    .line 593
    invoke-virtual {v2, v8, v13, v14}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v2

    .line 594
    invoke-virtual {v2, v10}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v2, "senderName"

    const/16 v8, 0x9

    .line 50253
    invoke-virtual {v0, v2, v8}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v2

    const/4 v10, 0x4

    const-wide v13, 0x43261e26b54aaff6L    # 3.112800543397883E15

    .line 595
    invoke-virtual {v2, v10, v13, v14}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v2, "groupName"

    .line 50254
    invoke-virtual {v0, v2, v8}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v2

    const-wide v13, 0x58d7ba32452ad4a9L    # 9.573420917059249E119

    .line 596
    invoke-virtual {v2, v9, v13, v14}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v2, "phoneAsRaw"

    .line 50255
    invoke-virtual {v0, v2, v8}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v2

    const-wide v13, 0x4133729183d62ef2L    # 1274513.514986929

    .line 597
    invoke-virtual {v2, v6, v13, v14}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v2

    const/16 v13, 0x800

    .line 598
    invoke-virtual {v2, v13}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v2

    const/16 v14, 0xf

    const-wide v3, 0x1b4c9f31b07c692L

    invoke-virtual {v2, v14, v3, v4}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string/jumbo v2, "when"

    .line 50256
    invoke-virtual {v0, v2, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v2

    const/4 v3, 0x7

    const-wide v4, 0x15c70622820ca87aL    # 9.179373529487635E-204

    .line 599
    invoke-virtual {v2, v3, v4, v5}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v2

    const/16 v3, 0xc

    .line 600
    invoke-virtual {v2, v3}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v2

    const/16 v4, 0x11

    const-wide v14, 0x3b07195381d62271L    # 2.3883734317660327E-24

    invoke-virtual {v2, v4, v14, v15}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v2, "firstSeen"

    .line 50257
    invoke-virtual {v0, v2, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v2

    const/16 v14, 0x8

    const-wide v4, 0x6731fefe59518ab7L    # 1.2528380453249351E189

    .line 601
    invoke-virtual {v2, v14, v4, v5}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v2

    .line 602
    invoke-virtual {v2, v10}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v2, "lastNotificationShowed"

    .line 50258
    invoke-virtual {v0, v2, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v2

    const-wide v4, 0x3c424c875c75b09fL    # 1.9839750987419374E-18

    .line 603
    invoke-virtual {v2, v8, v4, v5}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v2

    .line 604
    invoke-virtual {v2, v10}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v2, "seenCount"

    .line 50259
    invoke-virtual {v0, v2, v9}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v2

    const-wide v4, 0x17b09a78b45a1490L    # 1.421542842967302E-194

    .line 605
    invoke-virtual {v2, v11, v4, v5}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v2

    .line 606
    invoke-virtual {v2, v10}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v2, "disableNotification"

    .line 50260
    invoke-virtual {v0, v2, v7}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v2

    const/16 v4, 0xb

    const-wide v5, 0x343e911e3aacf55L

    .line 607
    invoke-virtual {v2, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v2

    .line 608
    invoke-virtual {v2, v3}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v2

    const/16 v4, 0x12

    const-wide v5, 0x6319276e782060beL    # 2.3732590425312673E169

    invoke-virtual {v2, v4, v5, v6}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v2, "starred"

    .line 50261
    invoke-virtual {v0, v2, v7}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v2

    const-wide v4, 0x1d02ed728d571b72L    # 6.269116861101329E-169

    .line 609
    invoke-virtual {v2, v1, v4, v5}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    .line 610
    invoke-virtual {v1, v3}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v1

    const/16 v2, 0x29

    const-wide v3, 0x4acd48412cc49210L    # 2.1911576712378102E52

    invoke-virtual {v1, v2, v3, v4}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v1, "displayName"

    .line 50262
    invoke-virtual {v0, v1, v8}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const/16 v2, 0xe

    const-wide v3, 0xc7c367d1cc1656dL

    .line 611
    invoke-virtual {v1, v2, v3, v4}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    .line 612
    invoke-virtual {v1, v13}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v1

    const/16 v2, 0x4c

    const-wide v3, 0x74222bfb89e0448fL    # 2.602103162622955E251

    invoke-virtual {v1, v2, v3, v4}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v1, "nameT9Format"

    .line 50263
    invoke-virtual {v0, v1, v8}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const-wide v2, 0x3b1bd5e8372a3b7eL    # 5.756261907373303E-24

    const/16 v4, 0xf

    .line 613
    invoke-virtual {v1, v4, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    .line 614
    invoke-virtual {v1, v13}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v1

    const/16 v2, 0x4d

    const-wide v3, 0x78995b0163f1cfd1L    # 8.572906677297067E272

    invoke-virtual {v1, v2, v3, v4}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v1, "nameT9FormatNoZero"

    .line 50264
    invoke-virtual {v0, v1, v8}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const-wide v2, 0x2a857ab3f860aba6L    # 7.492242106605197E-104

    .line 615
    invoke-virtual {v1, v12, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    .line 616
    invoke-virtual {v1, v13}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v1

    const/16 v2, 0x4e

    const-wide v3, 0x5c290ea656408598L    # 9.10628094474797E135

    invoke-virtual {v1, v2, v3, v4}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v1, "unAccentName"

    .line 50265
    invoke-virtual {v0, v1, v8}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const-wide v2, 0x72e2779c78ad9f63L    # 2.521902385921805E245

    const/16 v4, 0x11

    .line 617
    invoke-virtual {v1, v4, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    .line 618
    invoke-virtual {v1, v13}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v1

    const/16 v2, 0x4f

    const-wide v3, 0x329f466fcc684c9eL    # 7.424381075014456E-65

    invoke-virtual {v1, v2, v3, v4}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v1, "t9Indexes"

    .line 50266
    invoke-virtual {v0, v1, v8}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const/16 v2, 0x13

    const-wide v3, 0x29352a857f041228L

    .line 619
    invoke-virtual {v1, v2, v3, v4}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v1, "namesMap"

    .line 50267
    invoke-virtual {v0, v1, v8}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const-wide v2, 0x39eccec444a8ae6bL    # 1.1362627174183369E-29

    const/16 v4, 0x14

    .line 620
    invoke-virtual {v1, v4, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    .line 623
    invoke-virtual {v0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityFastCacheData(Lio/objectbox/e;)V
    .locals 14

    const-string v0, "FastCacheData"

    .line 627
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/4 v0, 0x5

    const-wide v1, 0x3c2caa863693d09aL    # 7.769964801445961E-19

    .line 628
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v1

    const/16 v2, 0xc

    const-wide v3, 0x67b5f0df81cd1e7dL    # 3.910316445692106E191

    invoke-virtual {v1, v2, v3, v4}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 629
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v1, "id"

    const/4 v5, 0x6

    .line 50268
    invoke-virtual {p0, v1, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v6, 0x1

    const-wide v7, 0x636b7db7ed678cd7L    # 8.300026577537298E170

    .line 631
    invoke-virtual {v1, v6, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v7, 0x3

    .line 632
    invoke-virtual {v1, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v1, "phoneOrIdKey"

    const/16 v8, 0x9

    .line 50269
    invoke-virtual {p0, v1, v8}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v9, 0x2

    const-wide v10, 0x6ffb78240dcc6accL

    .line 633
    invoke-virtual {v1, v9, v10, v11}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    const/16 v10, 0x800

    .line 634
    invoke-virtual {v1, v10}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v10, 0x4

    const-wide v11, 0xbfe81cd5fdc8d13L

    invoke-virtual {v1, v10, v11, v12}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v1, "expirationDate"

    const/16 v11, 0xa

    .line 50270
    invoke-virtual {p0, v1, v11}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const-wide v12, 0x7809f053bc828b03L    # 1.7129143014342396E270

    .line 635
    invoke-virtual {v1, v7, v12, v13}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    const/16 v7, 0x8

    .line 636
    invoke-virtual {v1, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v1

    const-wide v12, 0x65729b770aca79e3L    # 4.825701224170464E180

    invoke-virtual {v1, v0, v12, v13}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v1, "fullName"

    .line 50271
    invoke-virtual {p0, v1, v8}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const-wide v12, 0x7a1e17994bdf1ddbL    # 1.7069848913676876E280

    .line 637
    invoke-virtual {v1, v10, v12, v13}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v1, "photoUrls"

    .line 50272
    invoke-virtual {p0, v1, v8}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const-wide v12, 0x2edef472f8f7969aL    # 6.373680963426753E-83

    .line 638
    invoke-virtual {v1, v11, v12, v13}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v1, "photoBackGroundColor"

    .line 50273
    invoke-virtual {p0, v1, v0}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    .line 639
    invoke-virtual {v1, v2, v3, v4}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    .line 640
    invoke-virtual {v1, v9}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v1, "photoUrl"

    .line 50274
    invoke-virtual {p0, v1, v8}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const-wide v2, 0x6d329d5ed7406f1bL    # 1.0267236886053537E218

    .line 641
    invoke-virtual {v1, v0, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "isSpam"

    .line 50275
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v1, 0x5607865163e7dbd5L    # 2.6976909841971965E106

    .line 642
    invoke-virtual {v0, v5, v1, v2}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 643
    invoke-virtual {v0, v10}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "photoDataSource"

    .line 50276
    invoke-virtual {p0, v0, v8}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v1, 0x7

    const-wide v2, 0x2e8e3734dccf63f6L    # 1.94421000467826E-84

    .line 644
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "nameDataSource"

    .line 50277
    invoke-virtual {p0, v0, v8}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v1, 0x5e4e39f61a3a695eL    # 1.8871851240935747E146

    .line 645
    invoke-virtual {v0, v7, v1, v2}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    .line 648
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityIMExtractedPhotoData(Lio/objectbox/e;)V
    .locals 10

    const-string v0, "IMExtractedPhotoData"

    .line 652
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x21

    const-wide v1, 0x48a18e5e510cf7baL    # 7.646771626066813E41

    .line 653
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/4 v1, 0x5

    const-wide v2, 0x35ca50136724c242L    # 1.4065582549185645E-49

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 654
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50278
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x1

    const-wide v6, 0x41afd766e082b361L    # 2.671051362552748E8

    .line 656
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x3

    .line 657
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "phoneOrIdKey"

    const/16 v6, 0x9

    .line 50279
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v7, 0x2

    const-wide v8, 0xbcc57d5d764fd2L

    .line 658
    invoke-virtual {v0, v7, v8, v9}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v7, 0x800

    .line 659
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v7, 0x3b

    const-wide v8, 0x4f691224df869e58L    # 3.54371217214414E74

    invoke-virtual {v0, v7, v8, v9}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "dataSource"

    .line 50280
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v7, 0x3d594937353e0759L    # 3.593356532418112E-13

    .line 660
    invoke-virtual {v0, v5, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "date"

    .line 50281
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 661
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v1, 0x4

    .line 662
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "url"

    .line 50282
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v2, 0x1a9e59d89771cea4L

    .line 663
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    .line 666
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityIncognitoData(Lio/objectbox/e;)V
    .locals 7

    const-string v0, "IncognitoData"

    .line 670
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x20

    const-wide v1, 0x3dc99f6eaf23971fL    # 4.6607570140433794E-11

    .line 671
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/4 v1, 0x2

    const-wide v2, 0xdb3d5d0d5357fefL    # 1.16198487957602E-242

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 672
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50283
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x1

    const-wide v5, 0x137b9506aedf6beaL

    .line 674
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 675
    invoke-virtual {v0, v4}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "phoneOrIdKey"

    const/16 v4, 0x9

    .line 50284
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 676
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x800

    .line 677
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x3a

    const-wide v2, 0x44c5c3e0338c36d2L    # 2.055659332901826E23

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    .line 680
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityJSONExternalSourceContactOBEntity(Lio/objectbox/e;)V
    .locals 8

    const-string v0, "JSONExternalSourceContactOBEntity"

    .line 684
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/4 v0, 0x4

    const-wide v1, 0x7b7b98ae8dce3d9dL    # 6.565813353670437E286

    .line 685
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v1

    const-wide v2, 0x6c7db314c9bc2e6eL    # 3.9993240399513956E214

    invoke-virtual {v1, v0, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    const-string v1, "id"

    const/4 v4, 0x6

    .line 50285
    invoke-virtual {p0, v1, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v4, 0x1

    const-wide v5, 0xf7904156a6f8f28L    # 3.93387370652513E-234

    .line 687
    invoke-virtual {v1, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    .line 688
    invoke-virtual {v1, v4}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v1, "externalSourceId"

    const/4 v4, 0x5

    .line 50286
    invoke-virtual {p0, v1, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v4, 0x2

    const-wide v5, 0x67268eb0d146cc7dL    # 7.851923517390504E188

    .line 689
    invoke-virtual {v1, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    .line 690
    invoke-virtual {v1, v0}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v1, "key"

    const/16 v4, 0x9

    .line 50287
    invoke-virtual {p0, v1, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v5, 0x3

    const-wide v6, 0x56262b7bbca08340L    # 1.016930718855436E107

    .line 691
    invoke-virtual {v1, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v1, "jsonDoc"

    .line 50288
    invoke-virtual {p0, v1, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    .line 692
    invoke-virtual {v1, v0, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    .line 695
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityMissedCallCardIds(Lio/objectbox/e;)V
    .locals 9

    const-string v0, "MissedCallCardIds"

    .line 699
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x23

    const-wide v1, 0x6fa96f13a46ea46fL    # 7.712222610661451E229

    .line 700
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/4 v1, 0x7

    const-wide v2, 0x651a84616a614d93L    # 1.0745426442936505E179

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50289
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x1

    const-wide v6, 0x63037a5a998c633cL    # 9.188629041053491E168

    .line 702
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x3

    .line 703
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "phoneNumber"

    const/16 v6, 0x9

    .line 50290
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v7, 0x4bae5fb119a5719eL    # 3.723816564668834E56

    .line 704
    invoke-virtual {v0, v5, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v5, 0x800

    .line 705
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v5, 0x3f

    const-wide v7, 0x168c2e229efee3e2L    # 4.601900308897451E-200

    invoke-virtual {v0, v5, v7, v8}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "phoneAsRaw"

    .line 50291
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v5, 0x51f2812a258b7f0L

    .line 706
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "numberOfMissedCalls"

    const/4 v5, 0x5

    .line 50292
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v6, 0x4

    const-wide v7, 0x51184d97d3b356c3L    # 4.61063206673896E82

    .line 707
    invoke-virtual {v0, v6, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 708
    invoke-virtual {v0, v6}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "lastMissedCall"

    .line 50293
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v7, 0x3c9bb650c352ddeaL    # 9.614590320188255E-17

    .line 709
    invoke-virtual {v0, v5, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 710
    invoke-virtual {v0, v6}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "missedCallType"

    .line 50294
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 711
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 712
    invoke-virtual {v0, v6}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    .line 715
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityOBPref(Lio/objectbox/e;)V
    .locals 8

    const-string v0, "OBPref"

    .line 719
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x1b

    const-wide v1, 0x4f6c4a2ca9f59706L    # 3.99869209439342E74

    .line 720
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/4 v1, 0x3

    const-wide v2, 0x55fe5b79bfe98f14L    # 1.7406121579570817E106

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 721
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50295
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x1

    const-wide v5, 0x63074afb22073491L    # 1.0988313568630534E169

    .line 723
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 724
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "key"

    const/16 v4, 0x9

    .line 50296
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x2

    const-wide v6, 0x2d269c643a56375cL

    .line 725
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string/jumbo v0, "value"

    .line 50297
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 726
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    .line 729
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityPersonalStoreItemUrlData(Lio/objectbox/e;)V
    .locals 8

    const-string v0, "PersonalStoreItemUrlData"

    .line 733
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x26

    const-wide v1, 0x3bf71041c08e67fL

    .line 734
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/4 v1, 0x5

    const-wide v2, 0x766149c343b3101aL    # 1.7011962029644324E262

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 735
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50298
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x1

    const-wide v5, 0x43c23e7b639782b2L    # 2.6292476178253343E18

    .line 737
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 738
    invoke-virtual {v0, v4}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "personalStoreItemUrl"

    const/16 v5, 0x9

    .line 50299
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x2

    const-wide v6, 0x3d51c7b4531426fcL    # 2.526703509020768E-13

    .line 739
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "personalStoreItemType"

    .line 50300
    invoke-virtual {p0, v0, v1}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 740
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 741
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "type"

    .line 50301
    invoke-virtual {p0, v0, v1}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v1, 0x3

    const-wide v2, 0xad413c2c5c25860L

    .line 742
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v1, 0x4

    .line 743
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "isUploaded"

    .line 50302
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v2, 0x3df961d42f35fadfL    # 3.693588067438067E-10

    .line 744
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 745
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    .line 748
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityPersonalStoreItemUserData(Lio/objectbox/e;)V
    .locals 8

    const-string v0, "PersonalStoreItemUserData"

    .line 752
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x29

    const-wide v1, 0x4143e235033ac1bcL    # 2606186.0252306145

    .line 753
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/4 v1, 0x5

    const-wide v2, 0x94bba2e16aaac21L

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 754
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50303
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x1

    const-wide v5, 0x259fa10abc5f4542L

    .line 756
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x3

    .line 757
    invoke-virtual {v0, v4}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "phoneOrIdKey"

    const/16 v5, 0x9

    .line 50304
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x4

    const-wide v6, 0x6445dca114fe9b8bL    # 1.0814191824308425E175

    .line 758
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v5, 0x800

    .line 759
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v5, 0x43

    const-wide v6, 0x4fa8bc5b68fa9998L    # 5.594153251659999E75

    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "personalStoreItemType"

    .line 50305
    invoke-virtual {p0, v0, v1}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 760
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v1, 0x2

    .line 761
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "personalStoreItemUrlDataToOneId"

    const-string v1, "PersonalStoreItemUrlData"

    const-string v2, "personalStoreItemUrlDataToOne"

    const/16 v3, 0xb

    .line 762
    invoke-virtual {p0, v0, v1, v2, v3}, Lio/objectbox/e$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v1, 0x6e5adbc6516725a9L    # 3.8834567344302103E223

    invoke-virtual {v0, v4, v1, v2}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x60c

    .line 763
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x42

    const-wide v2, 0x5bfe4899d5b51aa7L    # 1.3757057032730489E135

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    .line 766
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityPreferredSimData(Lio/objectbox/e;)V
    .locals 8

    const-string v0, "PreferredSimData"

    .line 770
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x2d

    const-wide v1, 0xf3462ece94c5b90L

    .line 771
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/4 v1, 0x3

    const-wide v2, 0x72ea0234f1ce8ef9L    # 3.5517615309908243E245

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 772
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50306
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x1

    const-wide v5, 0x7d53bd1a5129a16dL    # 5.042593129172707E295

    .line 774
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 775
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "phoneOrIdKey"

    const/16 v4, 0x9

    .line 50307
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x2

    const-wide v5, 0x18a05f1f3f956cf3L    # 4.593070261311647E-190

    .line 776
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v5, 0x800

    .line 777
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v5, 0x46

    const-wide v6, 0x3c29e9e0e3388e7eL    # 7.023892037160295E-19

    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "simId"

    const/4 v5, 0x5

    .line 50308
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 778
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 779
    invoke-virtual {v0, v4}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    .line 782
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityProfileViewedData(Lio/objectbox/e;)V
    .locals 9

    const-string v0, "ProfileViewedData"

    .line 238
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x31

    const-wide v1, 0x7e7b182f34310f21L    # 1.814497381605613E301

    .line 239
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/16 v1, 0x8

    const-wide v2, 0x157f1d92b5aa9450L

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 2189
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x1

    const-wide v6, 0x4418da218b9b6914L    # 1.1460996386078202E20

    .line 241
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 242
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "phoneNumber"

    const/16 v5, 0x9

    .line 3189
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v6, 0x2

    const-wide v7, 0x27583b2baa9dec3cL

    .line 243
    invoke-virtual {v0, v6, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "entrypoint"

    const/4 v7, 0x5

    .line 4189
    invoke-virtual {p0, v0, v7}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 244
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 245
    invoke-virtual {v0, v6}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "lastViewed"

    .line 5189
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v1, 0x4

    const-wide v2, 0x5eac0d9f9d43c548L    # 1.1209611364748528E148

    .line 246
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 247
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "name"

    .line 6189
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v2, 0x18ce8ae652610e14L    # 3.427507489875278E-189

    .line 248
    invoke-virtual {v0, v7, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "counter"

    .line 7189
    invoke-virtual {p0, v0, v7}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v2, 0x59f9e5bd294b343L

    .line 249
    invoke-virtual {v0, v4, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 250
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "type"

    .line 8189
    invoke-virtual {p0, v0, v7}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v1, 0x7

    const-wide v2, 0x57ffe5a8f30a0dc6L    # 7.85506309281924E115

    .line 251
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 252
    invoke-virtual {v0, v6}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    .line 255
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityPromotion(Lio/objectbox/e;)V
    .locals 11

    const-string v0, "Promotion"

    .line 786
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x22

    const-wide v1, 0x7ff638ef94af02faL

    .line 787
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/16 v1, 0x8

    const-wide v2, 0x61e8722b9f1b4a62L    # 4.39921392586315E163

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 788
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50309
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x1

    const-wide v6, 0x61df821679ddd117L    # 2.835049504537214E163

    .line 790
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 791
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "numberToGetGift"

    const/4 v5, 0x5

    .line 50310
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v6, 0x2

    const-wide v7, 0x1fe92c273467ccd7L    # 5.867027571712321E-155

    .line 792
    invoke-virtual {v0, v6, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v7, 0x4

    .line 793
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "currentNumberToGetGift"

    .line 50311
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v8, 0x3

    const-wide v9, 0x61e29eb07cfbee5aL

    .line 794
    invoke-virtual {v0, v8, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 795
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "typeToBuyToGetGift"

    .line 50312
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v8, 0x44cd4eb2eee2447aL    # 2.76800735065072E23

    .line 796
    invoke-virtual {v0, v7, v8, v9}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 797
    invoke-virtual {v0, v6}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "numberOfGift"

    .line 50313
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v8, 0x66d524cb4d3ed1b5L    # 2.299952495193258E187

    .line 798
    invoke-virtual {v0, v5, v8, v9}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 799
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "numberOfUsedGift"

    .line 50314
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v8, 0x698986fa9ad132cfL    # 2.4424819328545737E200

    .line 800
    invoke-virtual {v0, v4, v8, v9}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 801
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "expiredDate"

    const/16 v4, 0xa

    .line 50315
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x7

    const-wide v7, 0x442777910d81a449L    # 2.1644539805395717E20

    .line 802
    invoke-virtual {v0, v4, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "typeOfGift"

    .line 50316
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 803
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 804
    invoke-virtual {v0, v6}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    .line 807
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityRecorderTestData(Lio/objectbox/e;)V
    .locals 11

    const-string v0, "RecorderTestData"

    .line 259
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x2c

    const-wide v1, 0x6b8dda23a0b686cfL    # 1.2267666814634376E210

    .line 260
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/16 v1, 0xa

    const-wide v2, 0x686ebafe791e4131L    # 1.1216466602090504E195

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 261
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 9189
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x1

    const-wide v6, 0x7987cdbb46fc81d2L    # 2.637238315488038E277

    .line 263
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 264
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "audioMethod"

    const/4 v6, 0x5

    .line 10189
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v7, 0x2

    const-wide v8, 0x5b624ac601193248L    # 1.6229730051327304E132

    .line 265
    invoke-virtual {v0, v7, v8, v9}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 266
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "audioSource"

    .line 11189
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v8, 0x3

    const-wide v9, 0x240d16e8991faea5L    # 5.002740926837124E-135

    .line 267
    invoke-virtual {v0, v8, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 268
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "outputFormat"

    .line 12189
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v8, 0x4

    const-wide v9, 0x50c868d75d0f7830L    # 1.447132770481481E81

    .line 269
    invoke-virtual {v0, v8, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 270
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "testStatus"

    .line 13189
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v9, 0x7b72be14128d775eL    # 4.459264825645229E286

    .line 271
    invoke-virtual {v0, v6, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 272
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "testPriority"

    .line 14189
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v9, 0x543a5e457ebe00e3L    # 5.6322235697565196E97

    .line 273
    invoke-virtual {v0, v4, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 274
    invoke-virtual {v0, v8}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "recordTime"

    .line 15189
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x7

    const-wide v9, 0x675890d9f66960d5L    # 6.840827736718764E189

    .line 275
    invoke-virtual {v0, v4, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 276
    invoke-virtual {v0, v8}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string/jumbo v0, "volumeLevel"

    .line 16189
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v4, 0x8

    const-wide v9, 0x37c9670ba946401bL    # 5.832132956795616E-40

    .line 277
    invoke-virtual {v0, v4, v9, v10}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 278
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "forceInCommunicationMode"

    .line 17189
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v4, 0x9

    const-wide v5, 0x493a10ec2001ac81L    # 5.812935209192847E44

    .line 279
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 280
    invoke-virtual {v0, v8}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "callRecorderId"

    const-string v4, "CallRecorder"

    const-string v5, "callRecorder"

    const/16 v6, 0xb

    .line 281
    invoke-virtual {p0, v0, v4, v5, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x60c

    .line 282
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x44

    const-wide v2, 0x3c694dcfdd8f01ceL

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    .line 285
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityReferAndEarnData(Lio/objectbox/e;)V
    .locals 7

    const-string v0, "ReferAndEarnData"

    .line 289
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x2e

    const-wide v1, 0x52753c0e247957d5L    # 1.6896728670455315E89

    .line 290
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/4 v1, 0x6

    const-wide v2, 0x54a854be4ce7187dL    # 6.652257534525642E99

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 291
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v0, "id"

    .line 18189
    invoke-virtual {p0, v0, v1}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x1

    const-wide v5, 0x1d52fdea918697d8L

    .line 293
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x3

    .line 294
    invoke-virtual {v0, v4}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "referId"

    const/16 v5, 0x9

    .line 19189
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v5, 0x4741de4ca05f7b8aL    # 1.855556250009735E35

    .line 295
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "earnedPoints"

    const/4 v4, 0x5

    .line 20189
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 296
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v1, 0x4

    .line 297
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    .line 300
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityReferAndEarnUserData(Lio/objectbox/e;)V
    .locals 10

    const-string v0, "ReferAndEarnUserData"

    .line 304
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x2f

    const-wide v1, 0x1d32ac769ed63811L    # 4.94803151237072E-168

    .line 305
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/16 v1, 0x8

    const-wide v2, 0x687691ef7e84d2a2L    # 1.647592982621947E195

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 306
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 21189
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x1

    const-wide v6, 0x78077a7c0a35b57dL    # 1.550442435103245E270

    .line 308
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x3

    .line 309
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "globalPhoneNumber"

    const/16 v6, 0x9

    .line 22189
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v7, 0x4ada2fbd494fcb0bL    # 3.919010443676036E52

    .line 310
    invoke-virtual {v0, v4, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v7, 0x800

    .line 311
    invoke-virtual {v0, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v7, 0x56

    const-wide v8, 0x4bcbe69fcb743263L    # 1.368254966729712E57

    invoke-virtual {v0, v7, v8, v9}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "nameOrNumber"

    .line 23189
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v6, 0x7

    const-wide v7, 0x7558342f323c6d86L    # 1.8171077484087075E257

    .line 312
    invoke-virtual {v0, v6, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "date"

    .line 24189
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 313
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v1, 0x4

    .line 314
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "status"

    const/4 v2, 0x5

    .line 25189
    invoke-virtual {p0, v0, v2}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v2, 0x2ed04e77852f41b8L

    .line 315
    invoke-virtual {v0, v5, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v2, 0x2

    .line 316
    invoke-virtual {v0, v2}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "referAndEarnDataToOneId"

    const-string v2, "ReferAndEarnData"

    const-string v3, "referAndEarnDataToOne"

    const/16 v4, 0xb

    .line 317
    invoke-virtual {p0, v0, v2, v3, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v2, 0x2148bfa12b58def8L

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x60c

    .line 318
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x54

    const-wide v2, 0xf9469c8e3486fe5L

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    .line 321
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntitySingleMissedCallData(Lio/objectbox/e;)V
    .locals 8

    const-string v0, "SingleMissedCallData"

    .line 811
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x2a

    const-wide v1, 0x77252ce2523e4697L    # 8.534858842924587E265

    .line 812
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/4 v1, 0x7

    const-wide v2, 0xf7e23a9f2a49cbdL    # 4.739545704843254E-234

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 813
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50317
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x1

    const-wide v6, 0x135a743598d08c76L

    .line 815
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x3

    .line 816
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "contactId"

    .line 50318
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x2

    const-wide v6, 0x23329b602cef9b2cL

    .line 817
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x4

    .line 818
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "phoneAsRaw"

    const/16 v6, 0x9

    .line 50319
    invoke-virtual {p0, v0, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 819
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "missedCallTime"

    .line 50320
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v1, 0x3edfef3bff6275fcL    # 7.613780317464784E-6

    .line 820
    invoke-virtual {v0, v5, v1, v2}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 821
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "numberOfMissedCalls"

    const/4 v1, 0x5

    .line 50321
    invoke-virtual {p0, v0, v1}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v2, 0x33d858558978421L

    .line 822
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 823
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "missedCallType"

    .line 50322
    invoke-virtual {p0, v0, v1}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v1, 0x5b1dc15f1e1abb8eL    # 8.25017783365545E130

    .line 824
    invoke-virtual {v0, v4, v1, v2}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 825
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    .line 828
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntitySingleSmsData(Lio/objectbox/e;)V
    .locals 7

    const-string v0, "SingleSmsData"

    .line 832
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x1e

    const-wide v1, 0x4292bf93fa4aa8f5L    # 5.153507676842239E12

    .line 833
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/16 v1, 0x9

    const-wide v2, 0x7a5f3998d7e1e702L    # 2.8339896116593808E281

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 834
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50323
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 836
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v2, 0x1

    .line 837
    invoke-virtual {v0, v2}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "contactId"

    .line 50324
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v5, 0x5e25799f24a0afc8L    # 3.351990707876456E145

    .line 838
    invoke-virtual {v0, v2, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v2, 0x4

    .line 839
    invoke-virtual {v0, v2}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "smsText"

    .line 50325
    invoke-virtual {p0, v0, v1}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v2, 0x2

    const-wide v5, 0x71aa1bdb64a2df21L    # 3.400272748735272E239

    .line 840
    invoke-virtual {v0, v2, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "phone"

    .line 50326
    invoke-virtual {p0, v0, v1}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v2, 0x3

    const-wide v5, 0x2fd049077c20fc72L    # 2.1975365728033003E-78

    .line 841
    invoke-virtual {v0, v2, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "fullName"

    .line 50327
    invoke-virtual {p0, v0, v1}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v1, 0x31ffe482ae308f8cL    # 7.393518665587792E-68

    .line 842
    invoke-virtual {v0, v4, v1, v2}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    .line 845
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntitySpamData(Lio/objectbox/e;)V
    .locals 8

    const-string v0, "SpamData"

    .line 849
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x1c

    const-wide v1, 0x55b471dd34bf20e0L    # 7.326574730071163E104

    .line 850
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/4 v1, 0x3

    const-wide v2, 0x22ce1dc1d7f17ecaL

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50328
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x1

    const-wide v6, 0x170fd30ee20df3bL

    .line 852
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 853
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "phoneAsRaw"

    const/16 v5, 0x9

    .line 50329
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x2

    const-wide v6, 0x52882d379ff166ceL    # 3.8475519633307024E89

    .line 854
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v5, 0x800

    .line 855
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v5, 0x27

    const-wide v6, 0x1dc02b1cfc988259L    # 2.193510567080341E-165

    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string/jumbo v0, "when"

    .line 50330
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 856
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0xc

    .line 857
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x28

    const-wide v2, 0x3cb421dd1f2b0e11L    # 2.7939151409294304E-16

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    .line 860
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntitySuggestContactData(Lio/objectbox/e;)V
    .locals 10

    const-string v0, "SuggestContactData"

    .line 864
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x10

    const-wide v1, 0x3dcd1cc4b6664377L    # 5.295510453745316E-11

    .line 865
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/4 v1, 0x6

    const-wide v2, 0x14f5affa3770b3bfL

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    const-string v0, "id"

    .line 50331
    invoke-virtual {p0, v0, v1}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x1

    const-wide v5, 0x594d3004f44d6053L    # 1.5073922705248856E122

    .line 867
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x3

    .line 868
    invoke-virtual {v0, v4}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "phoneOrIdKey"

    const/16 v5, 0x9

    .line 50332
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v6, 0x2

    const-wide v7, 0x15103ff8c284f437L    # 3.163394859745143E-207

    .line 869
    invoke-virtual {v0, v6, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v6, 0x800

    .line 870
    invoke-virtual {v0, v6}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v7, 0x15

    const-wide v8, 0x15e056798d52917fL    # 2.605471364740289E-203

    invoke-virtual {v0, v7, v8, v9}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "socialNetworkId"

    const/4 v7, 0x5

    .line 50333
    invoke-virtual {p0, v0, v7}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v8, 0x17c40da54fc45afeL    # 3.433829573314223E-194

    .line 871
    invoke-virtual {v0, v4, v8, v9}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v4, 0xc

    .line 872
    invoke-virtual {v0, v4}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v4, 0x16

    const-wide v8, 0x356d6e530ab95918L    # 2.4581880277865143E-51

    invoke-virtual {v0, v4, v8, v9}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "profileId"

    .line 50334
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x4

    const-wide v8, 0x138d354664dbfde9L

    .line 873
    invoke-virtual {v0, v4, v8, v9}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "userName"

    .line 50335
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v8, 0x5246aeb39f8d90c3L    # 2.2560997336740863E88

    .line 874
    invoke-virtual {v0, v7, v8, v9}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 875
    invoke-virtual {v0, v6}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v4, 0x17

    const-wide v6, 0x465f92df707fa033L    # 1.0006111884372844E31

    invoke-virtual {v0, v4, v6, v7}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "contactName"

    .line 50336
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 876
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    .line 879
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntitySyncerData(Lio/objectbox/e;)V
    .locals 7

    const-string v0, "SyncerData"

    .line 1015
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x17

    const-wide v1, 0x41d94db888b53363L    # 1.6980956508312614E9

    .line 1016
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/4 v1, 0x3

    const-wide v2, 0x6d7c9128c39edfd2L    # 2.5210527052866394E219

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 1017
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50364
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x1

    const-wide v5, 0x67d23050c6399449L    # 1.29664081288021E192

    .line 1019
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 1020
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "phoneOrIdKey"

    const/16 v4, 0x9

    .line 50365
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 1021
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x800

    .line 1022
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x21

    const-wide v2, 0x17d72ad7974169d5L    # 7.934127975858374E-194

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    .line 1025
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntitySyncerDetails(Lio/objectbox/e;)V
    .locals 8

    const-string v0, "SyncerDetails"

    .line 1029
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x18

    const-wide v1, 0xc47dfed09c5b9d9L

    .line 1030
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/4 v1, 0x7

    const-wide v2, 0x11d2a234600e6aaaL    # 8.054531012724928E-223

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 1031
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50366
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x1

    const-wide v6, 0x79e7d827e23ed679L    # 1.6907198132216047E279

    .line 1033
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x3

    .line 1034
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "syncerKeyName"

    const/16 v5, 0x9

    .line 50367
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x2

    const-wide v6, 0x158740dcb5dc419L

    .line 1035
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v5, 0x800

    .line 1036
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v5, 0x22

    const-wide v6, 0x78a52b640ff3eb51L    # 1.431517278936571E273

    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "lastSyncDate"

    .line 50368
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v5, 0x29712d9c2f8f1c01L    # 4.571495898624339E-109

    .line 1037
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x4

    .line 1038
    invoke-virtual {v0, v4}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "syncerDataId"

    const-string v4, "SyncerData"

    const-string v5, "syncerData"

    const/16 v6, 0xb

    .line 1039
    invoke-virtual {p0, v0, v4, v5, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x60c

    .line 1040
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x23

    const-wide v2, 0x1f249aa6387d258aL

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    .line 1043
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityUsageCounterData(Lio/objectbox/e;)V
    .locals 9

    const-string v0, "UsageCounterData"

    .line 995
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x11

    const-wide v1, 0x27b387e46fd6b16cL

    .line 996
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/4 v1, 0x5

    const-wide v2, 0x175e64aae0b41bb3L

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 997
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50359
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x1

    const-wide v6, 0x1bd5b6a479f5b022L

    .line 999
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 1000
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "socialNetworkId"

    .line 50360
    invoke-virtual {p0, v0, v1}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x2

    const-wide v6, 0x69c532fea014e1bdL    # 3.24538738045328E201

    .line 1001
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v5, 0xc

    .line 1002
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v6, 0x18

    const-wide v7, 0x7f8691804e89b6e1L    # 1.9810055238745938E306

    invoke-virtual {v0, v6, v7, v8}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "netCallType"

    .line 50361
    invoke-virtual {p0, v0, v1}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v6, 0x3

    const-wide v7, 0x48405a923d1f181eL    # 1.1129815410775053E40

    .line 1003
    invoke-virtual {v0, v6, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 1004
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v5, 0x1b

    const-wide v6, 0x2592823d14019660L    # 1.068067762580814E-127

    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "count"

    .line 50362
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x4

    const-wide v6, 0x297514abe8449c83L    # 5.610061174695603E-109

    .line 1005
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 1006
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "date"

    .line 50363
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 1007
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 1008
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    .line 1011
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityUserCorrectedData(Lio/objectbox/e;)V
    .locals 8

    const-string v0, "UserCorrectedData"

    .line 883
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0xe

    const-wide v1, 0x5c03513052379856L    # 1.755055998899797E135

    .line 884
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/4 v1, 0x5

    const-wide v2, 0x3a892dcd244c3c8eL    # 1.0169681352180085E-26

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50337
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x1

    const-wide v5, 0x5e9a9b450367d913L    # 5.315767736804136E147

    .line 886
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x3

    .line 887
    invoke-virtual {v0, v4}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "phoneOrIdKey"

    const/16 v4, 0x9

    .line 50338
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x2

    const-wide v6, 0x416b3c617bee15e3L    # 1.427943587281317E7

    .line 888
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v5, 0x800

    .line 889
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v5, 0x13

    const-wide v6, 0x447d2bea94dfa41L

    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "fullName"

    .line 50339
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 890
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "userCorrectedType"

    .line 50340
    invoke-virtual {p0, v0, v1}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v1, 0x4

    const-wide v2, 0x6aa81ce9cca88909L    # 6.0480763682123045E205

    .line 891
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 892
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    .line 895
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityUserCorrectedPositiveData(Lio/objectbox/e;)V
    .locals 7

    const-string v0, "UserCorrectedPositiveData"

    .line 899
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0xf

    const-wide v1, 0x251572aac02b7168L    # 4.834672065749838E-130

    .line 900
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/4 v1, 0x4

    const-wide v2, 0x77b354fc31f56bffL    # 3.989443638171396E268

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 901
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50341
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x1

    const-wide v5, 0x4e31b3dcf9c35bbdL    # 4.772608976547426E68

    .line 903
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 904
    invoke-virtual {v0, v4}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "socialNetworkId"

    const/4 v4, 0x5

    .line 50342
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x2

    const-wide v5, 0x3c7bf6169181a7c4L    # 2.4252546035868734E-17

    .line 905
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 906
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "profileId"

    const/16 v4, 0x9

    .line 50343
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x3

    const-wide v5, 0x659b730a4f7cc264L    # 2.847540334555221E181

    .line 907
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "userCorrectedDataId"

    const-string v4, "UserCorrectedData"

    const-string v5, "userCorrectedData"

    const/16 v6, 0xb

    .line 908
    invoke-virtual {p0, v0, v4, v5, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x60c

    .line 909
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x14

    const-wide v2, 0x1736f7751db868ebL    # 7.681041885712715E-197

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    .line 912
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityUserMediaData(Lio/objectbox/e;)V
    .locals 8

    const-string v0, "UserMediaData"

    .line 916
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0xc

    const-wide v1, 0x1534ad4a635c5ddaL

    .line 917
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/4 v1, 0x3

    const-wide v2, 0x3be439d201a61bb1L    # 3.426394078875839E-20

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50344
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x1

    const-wide v5, 0x396bbe268142d20dL    # 4.274451294970053E-32

    .line 919
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 920
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "phoneOrIdKey"

    const/16 v4, 0x9

    .line 50345
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x2

    const-wide v6, 0x4fe8bccf128a560aL    # 8.951283820414437E76

    .line 921
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v5, 0x800

    .line 922
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v5, 0xe

    const-wide v6, 0x19e00630c806f573L    # 4.713988543566747E-184

    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "photoUrl"

    .line 50346
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 923
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    .line 926
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityUserNegativePositiveData(Lio/objectbox/e;)V
    .locals 7

    const-string v0, "UserNegativePositiveData"

    .line 930
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x13

    const-wide v1, 0x3fa52da1f55f184L

    .line 931
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/4 v1, 0x2

    const-wide v2, 0x3ba7724f075d6162L    # 2.482496696133429E-21

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50347
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x1

    const-wide v5, 0x155d32646e365616L    # 9.09408267357391E-206

    .line 933
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x3

    .line 934
    invoke-virtual {v0, v4}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "phoneOrIdKey"

    const/16 v4, 0x9

    .line 50348
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 935
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x800

    .line 936
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x1c

    const-wide v2, 0x35ebe3dd8e855a2aL    # 5.963493882956255E-49

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    .line 939
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityUserNegativeSocialData(Lio/objectbox/e;)V
    .locals 8

    const-string v0, "UserNegativeSocialData"

    .line 943
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x14

    const-wide v1, 0x685eaac99bc6d685L    # 5.596679987790216E194

    .line 944
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/4 v1, 0x4

    const-wide v2, 0x6ead8adf8a60fc5cL    # 1.3668902079711071E225

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 945
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50349
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x1

    const-wide v5, 0x527b01e7474529aaL    # 2.1490280191576316E89

    .line 947
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x3

    .line 948
    invoke-virtual {v0, v4}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "socialNetworkId"

    const/4 v5, 0x5

    .line 50350
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x2

    const-wide v6, 0x6e3008586d3aacaeL    # 5.795364374067906E222

    .line 949
    invoke-virtual {v0, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 950
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "profileId"

    const/16 v5, 0x9

    .line 50351
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v5, 0x57e8feb17665af10L

    .line 951
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "userNegativeDataId"

    const-string v4, "UserNegativePositiveData"

    const-string v5, "userNegativeData"

    const/16 v6, 0xb

    .line 952
    invoke-virtual {p0, v0, v4, v5, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x60c

    .line 953
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x1d

    const-wide v2, 0x7eb1b66a956b5b65L    # 1.8979164607462523E302

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    .line 956
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityUserPositiveSocialData(Lio/objectbox/e;)V
    .locals 9

    const-string v0, "UserPositiveSocialData"

    .line 960
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/16 v0, 0x15

    const-wide v1, 0x639d8116f7efc314L    # 7.126269199318068E171

    .line 961
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v0

    const/4 v1, 0x5

    const-wide v2, 0x1a22fd9b9c38dbb7L    # 8.938663742144994E-183

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 962
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v0, "id"

    const/4 v4, 0x6

    .line 50352
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v4, 0x1

    const-wide v5, 0x434eabe0f74bfae3L    # 1.7266464022590918E16

    .line 964
    invoke-virtual {v0, v4, v5, v6}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v5, 0x3

    .line 965
    invoke-virtual {v0, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "socialNetworkId"

    .line 50353
    invoke-virtual {p0, v0, v1}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v6, 0x2

    const-wide v7, 0x744c20947532bfa1L    # 1.6110680960499238E252

    .line 966
    invoke-virtual {v0, v6, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/4 v6, 0x4

    .line 967
    invoke-virtual {v0, v6}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "profileId"

    const/16 v7, 0x9

    .line 50354
    invoke-virtual {p0, v0, v7}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v7, 0xa462865b2e0d577L    # 3.60280216705083E-259

    .line 968
    invoke-virtual {v0, v5, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    const-string v0, "sure"

    .line 50355
    invoke-virtual {p0, v0, v4}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    const-wide v4, 0x59d79378acf67974L    # 6.234038103586319E124

    .line 969
    invoke-virtual {v0, v6, v4, v5}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 970
    invoke-virtual {v0, v6}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v0, "userPositiveDataId"

    const-string v4, "UserNegativePositiveData"

    const-string v5, "userPositiveData"

    const/16 v6, 0xb

    .line 971
    invoke-virtual {p0, v0, v4, v5, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x60c

    .line 972
    invoke-virtual {v0, v1}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v0

    const/16 v1, 0x1e

    const-wide v2, 0x5d26d9b959f3848dL    # 5.442311616732393E140

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    .line 975
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method private static buildEntityUserSpamData(Lio/objectbox/e;)V
    .locals 9

    const-string v0, "UserSpamData"

    .line 979
    invoke-virtual {p0, v0}, Lio/objectbox/e;->a(Ljava/lang/String;)Lio/objectbox/e$a;

    move-result-object p0

    const/4 v0, 0x3

    const-wide v1, 0x1169729a5ed4dcdeL    # 8.593720762192583E-225

    .line 980
    invoke-virtual {p0, v0, v1, v2}, Lio/objectbox/e$a;->a(IJ)Lio/objectbox/e$a;

    move-result-object v1

    const/4 v2, 0x4

    const-wide v3, 0x2a270d5492a436a5L

    invoke-virtual {v1, v2, v3, v4}, Lio/objectbox/e$a;->b(IJ)Lio/objectbox/e$a;

    .line 981
    invoke-virtual {p0}, Lio/objectbox/e$a;->a()Lio/objectbox/e$a;

    const-string v1, "id"

    const/4 v5, 0x6

    .line 50356
    invoke-virtual {p0, v1, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v5, 0x1

    const-wide v6, 0x7518efb881570700L    # 1.1700656924462591E256

    .line 983
    invoke-virtual {v1, v5, v6, v7}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    .line 984
    invoke-virtual {v1, v5}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    const-string v1, "phone"

    const/16 v6, 0x9

    .line 50357
    invoke-virtual {p0, v1, v6}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v1

    const/4 v6, 0x2

    const-wide v7, 0x7bad1890fca66e57L    # 5.538072057002168E287

    .line 985
    invoke-virtual {v1, v6, v7, v8}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v1

    const/16 v7, 0x800

    .line 986
    invoke-virtual {v1, v7}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    move-result-object v1

    const-wide v7, 0x3e853d8cf1baff3cL    # 1.5825354970042985E-7

    invoke-virtual {v1, v0, v7, v8}, Lio/objectbox/e$b;->b(IJ)Lio/objectbox/e$b;

    const-string v0, "spamScore"

    .line 50358
    invoke-virtual {p0, v0, v5}, Lio/objectbox/e$a;->a(Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object v0

    .line 987
    invoke-virtual {v0, v2, v3, v4}, Lio/objectbox/e$b;->a(IJ)Lio/objectbox/e$b;

    move-result-object v0

    .line 988
    invoke-virtual {v0, v6}, Lio/objectbox/e$b;->a(I)Lio/objectbox/e$b;

    .line 991
    invoke-virtual {p0}, Lio/objectbox/e$a;->b()Lio/objectbox/e;

    return-void
.end method

.method public static builder()Lio/objectbox/b;
    .locals 2

    .line 141
    new-instance v0, Lio/objectbox/b;

    invoke-static {}, Lcom/callapp/contacts/model/MyObjectBox;->getModel()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lio/objectbox/b;-><init>([B)V

    .line 142
    sget-object v1, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 143
    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->d:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 144
    sget-object v1, Lcom/callapp/contacts/model/invites/ReferAndEarnData_;->__INSTANCE:Lcom/callapp/contacts/model/invites/ReferAndEarnData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 145
    sget-object v1, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->__INSTANCE:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 146
    sget-object v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 147
    sget-object v1, Lcom/callapp/contacts/model/objectbox/AnalyticsExcludeContact_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/AnalyticsExcludeContact_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 148
    sget-object v1, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/BirthdayData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 149
    sget-object v1, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 150
    sget-object v1, Lcom/callapp/contacts/model/objectbox/BlockedRule_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/BlockedRule_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 151
    sget-object v1, Lcom/callapp/contacts/model/objectbox/CacheData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/CacheData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 152
    sget-object v1, Lcom/callapp/contacts/model/objectbox/CallRecorder_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/CallRecorder_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 153
    sget-object v1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 154
    sget-object v1, Lcom/callapp/contacts/model/objectbox/CallRemindersData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/CallRemindersData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 155
    sget-object v1, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 156
    sget-object v1, Lcom/callapp/contacts/model/objectbox/CommonSpammer_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/CommonSpammer_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 157
    sget-object v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/ContactLookupData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 158
    sget-object v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 159
    sget-object v1, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/FastCacheData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 160
    sget-object v1, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 161
    sget-object v1, Lcom/callapp/contacts/model/objectbox/IncognitoData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/IncognitoData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 162
    sget-object v1, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 163
    sget-object v1, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/MissedCallCardIds_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 164
    sget-object v1, Lcom/callapp/contacts/model/objectbox/OBPref_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/OBPref_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 165
    sget-object v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 166
    sget-object v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 167
    sget-object v1, Lcom/callapp/contacts/model/objectbox/PreferredSimData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/PreferredSimData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 168
    sget-object v1, Lcom/callapp/contacts/model/objectbox/Promotion_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/Promotion_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 169
    sget-object v1, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/SingleMissedCallData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 170
    sget-object v1, Lcom/callapp/contacts/model/objectbox/SingleSmsData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/SingleSmsData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 171
    sget-object v1, Lcom/callapp/contacts/model/objectbox/SpamData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/SpamData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 172
    sget-object v1, Lcom/callapp/contacts/model/objectbox/SuggestContactData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/SuggestContactData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 173
    sget-object v1, Lcom/callapp/contacts/model/objectbox/UserCorrectedData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/UserCorrectedData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 174
    sget-object v1, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 175
    sget-object v1, Lcom/callapp/contacts/model/objectbox/UserMediaData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/UserMediaData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 176
    sget-object v1, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 177
    sget-object v1, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 178
    sget-object v1, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 179
    sget-object v1, Lcom/callapp/contacts/model/objectbox/UserSpamData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/UserSpamData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 180
    sget-object v1, Lcom/callapp/contacts/model/UsageCounterData_;->__INSTANCE:Lcom/callapp/contacts/model/UsageCounterData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 181
    sget-object v1, Lcom/callapp/contacts/sync/model/SyncerData_;->__INSTANCE:Lcom/callapp/contacts/sync/model/SyncerData_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    .line 182
    sget-object v1, Lcom/callapp/contacts/sync/model/SyncerDetails_;->__INSTANCE:Lcom/callapp/contacts/sync/model/SyncerDetails_;

    invoke-virtual {v0, v1}, Lio/objectbox/b;->a(Lio/objectbox/c;)V

    return-object v0
.end method

.method private static getModel()[B
    .locals 7

    .line 187
    new-instance v0, Lio/objectbox/e;

    invoke-direct {v0}, Lio/objectbox/e;-><init>()V

    const/16 v1, 0x31

    .line 1275
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lio/objectbox/e;->d:Ljava/lang/Integer;

    const-wide v1, 0x7e7b182f34310f21L    # 1.814497381605613E301

    .line 1276
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lio/objectbox/e;->e:Ljava/lang/Long;

    const/16 v1, 0x56

    .line 1281
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lio/objectbox/e;->f:Ljava/lang/Integer;

    const-wide v1, 0x4bcbe69fcb743263L    # 1.368254966729712E57

    .line 1282
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lio/objectbox/e;->g:Ljava/lang/Long;

    const/4 v1, 0x0

    .line 1287
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lio/objectbox/e;->h:Ljava/lang/Integer;

    const-wide/16 v2, 0x0

    .line 1288
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lio/objectbox/e;->i:Ljava/lang/Long;

    .line 192
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityProfileViewedData(Lio/objectbox/e;)V

    .line 193
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityRecorderTestData(Lio/objectbox/e;)V

    .line 194
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityReferAndEarnData(Lio/objectbox/e;)V

    .line 195
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityReferAndEarnUserData(Lio/objectbox/e;)V

    .line 196
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityAnalyticsCallsData(Lio/objectbox/e;)V

    .line 197
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityAnalyticsExcludeContact(Lio/objectbox/e;)V

    .line 198
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityBirthdayData(Lio/objectbox/e;)V

    .line 199
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityBlockedNumberData(Lio/objectbox/e;)V

    .line 200
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityBlockedRule(Lio/objectbox/e;)V

    .line 201
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityCacheData(Lio/objectbox/e;)V

    .line 202
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityCallRecorder(Lio/objectbox/e;)V

    .line 203
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityCallReminderFrequentData(Lio/objectbox/e;)V

    .line 204
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityCallRemindersData(Lio/objectbox/e;)V

    .line 205
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityChosenContactPhoto(Lio/objectbox/e;)V

    .line 206
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityCommonSpammer(Lio/objectbox/e;)V

    .line 207
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityContactLookupData(Lio/objectbox/e;)V

    .line 208
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityExtractedInfo(Lio/objectbox/e;)V

    .line 209
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityFastCacheData(Lio/objectbox/e;)V

    .line 210
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityIMExtractedPhotoData(Lio/objectbox/e;)V

    .line 211
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityIncognitoData(Lio/objectbox/e;)V

    .line 212
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityJSONExternalSourceContactOBEntity(Lio/objectbox/e;)V

    .line 213
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityMissedCallCardIds(Lio/objectbox/e;)V

    .line 214
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityOBPref(Lio/objectbox/e;)V

    .line 215
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityPersonalStoreItemUrlData(Lio/objectbox/e;)V

    .line 216
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityPersonalStoreItemUserData(Lio/objectbox/e;)V

    .line 217
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityPreferredSimData(Lio/objectbox/e;)V

    .line 218
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityPromotion(Lio/objectbox/e;)V

    .line 219
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntitySingleMissedCallData(Lio/objectbox/e;)V

    .line 220
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntitySingleSmsData(Lio/objectbox/e;)V

    .line 221
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntitySpamData(Lio/objectbox/e;)V

    .line 222
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntitySuggestContactData(Lio/objectbox/e;)V

    .line 223
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityUserCorrectedData(Lio/objectbox/e;)V

    .line 224
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityUserCorrectedPositiveData(Lio/objectbox/e;)V

    .line 225
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityUserMediaData(Lio/objectbox/e;)V

    .line 226
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityUserNegativePositiveData(Lio/objectbox/e;)V

    .line 227
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityUserNegativeSocialData(Lio/objectbox/e;)V

    .line 228
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityUserPositiveSocialData(Lio/objectbox/e;)V

    .line 229
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityUserSpamData(Lio/objectbox/e;)V

    .line 230
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntityUsageCounterData(Lio/objectbox/e;)V

    .line 231
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntitySyncerData(Lio/objectbox/e;)V

    .line 232
    invoke-static {v0}, Lcom/callapp/contacts/model/MyObjectBox;->buildEntitySyncerDetails(Lio/objectbox/e;)V

    .line 1293
    iget-object v2, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Lcom/google/flatbuffers/d;->a(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1294
    iget-object v3, v0, Lio/objectbox/e;->b:Ljava/util/List;

    invoke-virtual {v0, v3}, Lio/objectbox/e;->a(Ljava/util/List;)I

    move-result v3

    .line 1295
    iget-object v4, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    invoke-static {v4}, Lio/objectbox/model/Model;->startModel(Lcom/google/flatbuffers/d;)V

    .line 1296
    iget-object v4, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    invoke-static {v4, v2}, Lio/objectbox/model/Model;->addName(Lcom/google/flatbuffers/d;I)V

    .line 1297
    iget-object v2, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    const-wide/16 v4, 0x2

    invoke-static {v2, v4, v5}, Lio/objectbox/model/Model;->addModelVersion(Lcom/google/flatbuffers/d;J)V

    .line 1298
    iget-object v2, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    const-wide/16 v4, 0x1

    invoke-static {v2, v4, v5}, Lio/objectbox/model/Model;->addVersion(Lcom/google/flatbuffers/d;J)V

    .line 1299
    iget-object v2, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    invoke-static {v2, v3}, Lio/objectbox/model/Model;->addEntities(Lcom/google/flatbuffers/d;I)V

    .line 1300
    iget-object v2, v0, Lio/objectbox/e;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 1301
    iget-object v2, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    iget-object v3, v0, Lio/objectbox/e;->d:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    iget-object v5, v0, Lio/objectbox/e;->e:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lio/objectbox/model/IdUid;->createIdUid(Lcom/google/flatbuffers/d;JJ)I

    move-result v2

    .line 1302
    iget-object v3, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    invoke-static {v3, v2}, Lio/objectbox/model/Model;->addLastEntityId(Lcom/google/flatbuffers/d;I)V

    .line 1304
    :cond_0
    iget-object v2, v0, Lio/objectbox/e;->f:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1305
    iget-object v2, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    iget-object v3, v0, Lio/objectbox/e;->f:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    iget-object v5, v0, Lio/objectbox/e;->g:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lio/objectbox/model/IdUid;->createIdUid(Lcom/google/flatbuffers/d;JJ)I

    move-result v2

    .line 1306
    iget-object v3, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    invoke-static {v3, v2}, Lio/objectbox/model/Model;->addLastIndexId(Lcom/google/flatbuffers/d;I)V

    .line 1308
    :cond_1
    iget-object v2, v0, Lio/objectbox/e;->h:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 1309
    iget-object v2, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    iget-object v3, v0, Lio/objectbox/e;->h:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    iget-object v5, v0, Lio/objectbox/e;->i:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lio/objectbox/model/IdUid;->createIdUid(Lcom/google/flatbuffers/d;JJ)I

    move-result v2

    .line 1310
    iget-object v3, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    invoke-static {v3, v2}, Lio/objectbox/model/Model;->addLastRelationId(Lcom/google/flatbuffers/d;I)V

    .line 1312
    :cond_2
    iget-object v2, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    invoke-static {v2}, Lio/objectbox/model/Model;->endModel(Lcom/google/flatbuffers/d;)I

    move-result v2

    .line 1314
    iget-object v3, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    .line 1902
    invoke-virtual {v3, v2, v1}, Lcom/google/flatbuffers/d;->b(IZ)V

    .line 1315
    iget-object v0, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    invoke-virtual {v0}, Lcom/google/flatbuffers/d;->d()[B

    move-result-object v0

    return-object v0
.end method
