.class public Lcom/callapp/contacts/loader/GmailLoader;
.super Lcom/callapp/contacts/loader/SimpleContactLoader;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/loader/api/NetworkDataLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/callapp/contacts/loader/SimpleContactLoader;-><init>()V

    return-void
.end method

.method private static c(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->setGmailEmailData(Lcom/callapp/contacts/model/contact/GmailEmailData;)V

    .line 127
    iget-object p0, p0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateGmailData()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 16

    move-object/from16 v0, p1

    .line 32
    iget-object v1, v0, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->gmailData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->get()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 36
    :cond_0
    iget-object v1, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    const-class v2, Lcom/callapp/contacts/loader/GmailLoader;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 37
    :try_start_0
    iget-object v2, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getEmails()Ljava/util/Collection;

    move-result-object v2

    .line 40
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 42
    iget-object v3, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getGmailEmailData()Lcom/callapp/contacts/model/contact/GmailEmailData;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 44
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 45
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/GmailEmailData;->getEmail()Lcom/callapp/common/model/json/JSONEmail;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 46
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 47
    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    monitor-exit v1

    return-void

    .line 55
    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 57
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/common/model/json/JSONEmail;

    .line 58
    invoke-virtual {v7}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 62
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->get()Lcom/callapp/contacts/api/helper/gmail/GmailManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->a([Ljava/lang/String;)Lcom/callapp/contacts/model/contact/GmailEmailData;

    move-result-object v2

    .line 63
    iget-object v3, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getGmailEmailData()Lcom/callapp/contacts/model/contact/GmailEmailData;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 64
    iget-object v3, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/model/contact/ContactData;->setGmailEmailData(Lcom/callapp/contacts/model/contact/GmailEmailData;)V

    .line 65
    iget-object v3, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->updateGmailData()V

    :cond_3
    if-eqz v2, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_1
    if-eqz v2, :cond_f

    .line 77
    iget-object v2, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object v2

    .line 78
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 79
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 80
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/framework/phone/Phone;

    .line 81
    invoke-virtual {v7}, Lcom/callapp/framework/phone/Phone;->isValidForSearch()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1428
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1429
    invoke-virtual {v7}, Lcom/callapp/framework/phone/Phone;->b()Ljava/lang/String;

    move-result-object v9

    .line 1430
    invoke-virtual {v7}, Lcom/callapp/framework/phone/Phone;->d()Ljava/lang/String;

    move-result-object v10

    .line 2350
    iget-object v11, v7, Lcom/callapp/framework/phone/Phone;->d:Ljava/lang/String;

    if-nez v11, :cond_6

    .line 2351
    invoke-virtual {v7}, Lcom/callapp/framework/phone/Phone;->d()Ljava/lang/String;

    move-result-object v11

    .line 2352
    invoke-static {v11}, Lcom/callapp/framework/phone/Phone;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/callapp/framework/phone/Phone;->d:Ljava/lang/String;

    .line 2354
    :cond_6
    iget-object v11, v7, Lcom/callapp/framework/phone/Phone;->d:Ljava/lang/String;

    .line 3342
    iget-object v12, v7, Lcom/callapp/framework/phone/Phone;->e:Ljava/lang/String;

    if-nez v12, :cond_7

    .line 3343
    invoke-virtual {v7}, Lcom/callapp/framework/phone/Phone;->c()Ljava/lang/String;

    move-result-object v12

    .line 3344
    invoke-static {v12}, Lcom/callapp/framework/phone/Phone;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/callapp/framework/phone/Phone;->e:Ljava/lang/String;

    .line 3346
    :cond_7
    iget-object v12, v7, Lcom/callapp/framework/phone/Phone;->e:Ljava/lang/String;

    .line 3380
    iget-object v13, v7, Lcom/callapp/framework/phone/Phone;->f:Ljava/lang/String;

    if-nez v13, :cond_8

    .line 3381
    invoke-virtual {v7}, Lcom/callapp/framework/phone/Phone;->c()Ljava/lang/String;

    move-result-object v13

    const-string v14, "-"

    const-string v15, ""

    .line 3382
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string v14, " "

    const-string v15, "-"

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, " "

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 3383
    iput-object v13, v7, Lcom/callapp/framework/phone/Phone;->f:Ljava/lang/String;

    .line 3385
    :cond_8
    iget-object v13, v7, Lcom/callapp/framework/phone/Phone;->f:Ljava/lang/String;

    .line 1434
    invoke-virtual {v7}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v14

    .line 1435
    invoke-virtual {v7}, Lcom/callapp/framework/phone/Phone;->c()Ljava/lang/String;

    move-result-object v15

    .line 1437
    invoke-interface {v8, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1438
    invoke-interface {v8, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v14, "-"

    const-string v4, " "

    .line 1439
    invoke-virtual {v15, v14, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v4, " "

    const-string v14, "-"

    .line 1440
    invoke-virtual {v15, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1441
    invoke-interface {v8, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1442
    invoke-interface {v8, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1444
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1445
    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1446
    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x2d

    const/16 v12, 0x2e

    .line 1447
    invoke-virtual {v11, v12, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v13, 0x20

    .line 1448
    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1450
    invoke-static {v9}, Lcom/callapp/common/util/RegexUtils;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1451
    invoke-static {v10}, Lcom/callapp/common/util/RegexUtils;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1453
    invoke-static {v11}, Lcom/callapp/common/util/RegexUtils;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1454
    invoke-static {v9}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1455
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1456
    invoke-virtual {v9, v12, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1457
    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1462
    :cond_9
    invoke-virtual {v7}, Lcom/callapp/framework/phone/Phone;->getLocalNumberWithoutAreaCode()Ljava/lang/String;

    move-result-object v9

    .line 1463
    invoke-virtual {v7}, Lcom/callapp/framework/phone/Phone;->getNDC()Ljava/lang/String;

    move-result-object v10

    .line 1465
    invoke-static {v10}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-static {v9}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1466
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/callapp/common/util/RegexUtils;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "0"

    .line 1467
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1468
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "+"

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/callapp/framework/phone/Phone;->getCountryCode()I

    move-result v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1470
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1471
    invoke-virtual {v9, v12, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1472
    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1474
    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1475
    invoke-virtual {v10, v12, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1476
    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1478
    invoke-interface {v8, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1479
    invoke-virtual {v7, v12, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1480
    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_a
    invoke-interface {v6, v8}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 86
    :cond_b
    invoke-static {v6}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 87
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 88
    invoke-interface {v6, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->get()Lcom/callapp/contacts/api/helper/gmail/GmailManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->b([Ljava/lang/String;)Lcom/callapp/contacts/model/contact/GmailEmailData;

    move-result-object v2

    .line 91
    iget-object v4, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->getGmailEmailData()Lcom/callapp/contacts/model/contact/GmailEmailData;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 92
    iget-object v4, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v4, v2}, Lcom/callapp/contacts/model/contact/ContactData;->setGmailEmailData(Lcom/callapp/contacts/model/contact/GmailEmailData;)V

    .line 93
    iget-object v4, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->updateFullName()V

    .line 94
    iget-object v4, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->updateEmails()V

    .line 95
    iget-object v4, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->updateGmailData()V

    :cond_c
    if-eqz v2, :cond_f

    const/4 v3, 0x0

    goto :goto_3

    .line 102
    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/loader/GmailLoader;->c(Lcom/callapp/contacts/loader/api/LoadContext;)V

    goto :goto_3

    .line 105
    :cond_e
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/loader/GmailLoader;->c(Lcom/callapp/contacts/loader/api/LoadContext;)V

    :cond_f
    :goto_3
    if-eqz v3, :cond_11

    .line 110
    iget-object v2, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    new-array v3, v5, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 113
    invoke-static {}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->get()Lcom/callapp/contacts/api/helper/gmail/GmailManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->b([Ljava/lang/String;)Lcom/callapp/contacts/model/contact/GmailEmailData;

    move-result-object v2

    .line 114
    iget-object v3, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getGmailEmailData()Lcom/callapp/contacts/model/contact/GmailEmailData;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 115
    iget-object v3, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/model/contact/ContactData;->setGmailEmailData(Lcom/callapp/contacts/model/contact/GmailEmailData;)V

    .line 116
    iget-object v0, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->gmailData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    goto :goto_4

    .line 119
    :cond_10
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/loader/GmailLoader;->c(Lcom/callapp/contacts/loader/api/LoadContext;)V

    .line 122
    :cond_11
    :goto_4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_12
    :goto_5
    return-void
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->phones:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method
